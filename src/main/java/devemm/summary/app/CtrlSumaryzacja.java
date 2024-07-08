package devemm.summary.app;

import devemm.summary.app.serv.database.DbService;


import devemm.summary.app.serv.database.pojo.WebPageDto;
import devemm.summary.app.serv.grabber.Grabber;
import devemm.summary.app.serv.grabber.TxtGrabber;
import devemm.summary.app.serv.strategychooser.PathChooser;
import devemm.summary.app.serv.sumarize.SummarizerAI;
import devemm.summary.beans.MyTextReader;
import devemm.summary.pojo.SimpleJsonText;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.ai.document.Document;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;


@RequestMapping("summarize")
@RestController
@RequiredArgsConstructor
@Log4j2
public class CtrlSumaryzacja {

    private final SummarizerAI summarizerAI;
    private final DbService dbService;
    private final Grabber grabber;
    private final MyTextReader myTextReader;

    @GetMapping()
    public String hello() {
        return "Hi/Ai!";
    }

//    @GetMapping("{video_id}")
//    public SimpleJsonText see(@PathVariable(name = "video_id", required = true) String videoId) {
//        SimpleJsonText summarize = summarizerAI.summarize(videoId);
////        return translator.translateEnToPl(summarize);
//        return null;
//    }

    @GetMapping(path = "load")
    public ResponseEntity<?> loadData()  {
        List<String> urls = myTextReader.loadText();
        List<SimpleJsonText> list = urls.stream().filter(url -> !url.contains("youtu")).map(url -> new SimpleJsonText(url)).limit(2).toList();

        for (SimpleJsonText simpleJsonText : list) {
            getWebPageDtoResponseEntity(simpleJsonText);
        }
        return ResponseEntity.ok(list);
    }

    @PostMapping()
    public ResponseEntity<?> see(@RequestBody @Valid SimpleJsonText bodyJsonWithLink) {
                return getWebPageDtoResponseEntity(bodyJsonWithLink);


    }

    private ResponseEntity<WebPageDto> getWebPageDtoResponseEntity(SimpleJsonText bodyJsonWithLink) {
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
