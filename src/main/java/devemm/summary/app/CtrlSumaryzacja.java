package devemm.summary.app;

import devemm.summary.app.grabber.TxtGrabber;
import devemm.summary.app.strategychooser.PathChooser;
import devemm.summary.pojo.SimpleJsonText;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RequestMapping("summarize")
@RestController
@RequiredArgsConstructor
@Log4j2
public class CtrlSumaryzacja {

    private final SummarizerAI summarizerAI;

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
        TxtGrabber txtGrabber = PathChooser.getStrategyFromUrl(bodyJsonWithLink.txt()).getTxtGrabber();
        summarizerAI.setTxtGrabber(txtGrabber);
        String summarize = summarizerAI.summarize(bodyJsonWithLink.txt());
        return ResponseEntity.ok(summarize);
    }




}
