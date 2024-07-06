package devemm.summary.app;

import devemm.summary.app.serv.database.DbService;

import devemm.summary.app.serv.database.pojo.WebPage;
import devemm.summary.app.serv.grabber.TxtGrabber;
import devemm.summary.app.serv.strategychooser.PathChooser;
import devemm.summary.app.serv.sumarize.SummarizerAI;
import devemm.summary.pojo.SimpleJsonText;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;


@RequestMapping("summarize")
@RestController
@RequiredArgsConstructor
@Log4j2
public class CtrlSumaryzacja {

    private final SummarizerAI summarizerAI;
    private final DbService dbService;

    @GetMapping()
    public String  hello() {
        return "Hi/Ai!";
    }

//    @GetMapping("{video_id}")
//    public SimpleJsonText see(@PathVariable(name = "video_id", required = true) String videoId) {
//        SimpleJsonText summarize = summarizerAI.summarize(videoId);
////        return translator.translateEnToPl(summarize);
//        return null;
//    }

    @PostMapping()
    public ResponseEntity<?> see(@RequestBody @Valid SimpleJsonText bodyJsonWithLink) {
       //todo factory

        Optional<WebPage> webPage = dbService.returnWebPageInfoIfExists(bodyJsonWithLink.txt());
        if(webPage.isPresent()) {
            var summary = webPage.get().getSummary();
            return ResponseEntity.ok(summary);
        }else {
            TxtGrabber txtGrabber = PathChooser.getStrategyFromUrl(bodyJsonWithLink.txt()).getTxtGrabber();
            summarizerAI.setTxtGrabber(txtGrabber);
            String summarize = summarizerAI.summarize(bodyJsonWithLink.txt());
            dbService.saveWebPage(bodyJsonWithLink.txt(), summarize);
            return ResponseEntity.ok(summarize);
        }



    }




}
