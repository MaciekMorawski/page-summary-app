package devemm.summary.app.serv;

import devemm.summary.app.serv.database.DbService;
import devemm.summary.app.serv.database.pojo.WebPageDto;
import devemm.summary.app.serv.grabber.Grabber;
import devemm.summary.app.serv.grabber.TxtGrabber;
import devemm.summary.app.serv.strategychooser.PathChooser;
import devemm.summary.app.serv.sumarize.SummarizerAI;
import devemm.summary.pojo.SimpleJsonText;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@AllArgsConstructor
public class InputProcess {

    private final DbService dbService;
    private final Grabber grabber;
    private final SummarizerAI summarizerAI;


    public  ResponseEntity<WebPageDto> getWebPageDtoResponseEntity(SimpleJsonText bodyJsonWithLink) {
        Optional<WebPageDto> webPageDto = dbService.returnWebPageInfoIfExists(bodyJsonWithLink.txt());

        if (webPageDto.isPresent()) {
            var summary = webPageDto.get();
            return ResponseEntity.ok(summary);
        } else {
            TxtGrabber txtGrabber = PathChooser.getStrategyFromUrl(bodyJsonWithLink.txt()).getTxtGrabber();
            String toSummarize = grabber.grab(txtGrabber, bodyJsonWithLink.txt());

            String summaryReady = summarizerAI.summarizeByAI(toSummarize.substring(0, Integer.min(3000, toSummarize.length())));

            var returnValue = dbService.saveWebPage(bodyJsonWithLink.txt(), summaryReady, toSummarize);
            return ResponseEntity.ok(returnValue);
        }
    }
}
