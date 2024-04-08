package devemm.summary.summary;

import devemm.summary.pojo.SimpleJsonText;
import devemm.summary.summary.grabber.TxtGrabber;
import devemm.summary.tool.PathChooser;
import lombok.RequiredArgsConstructor;
import lombok.SneakyThrows;
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
    public ResponseEntity<?> see(@RequestBody SimpleJsonText bodyJsonWithLink) {
       //todo factory
        TxtGrabber txtGrabber = PathChooser.getStrategyFromUrl(bodyJsonWithLink).getTxtGrabber();
        summarizerAI.setTxtGrabber(txtGrabber);
        SimpleJsonText summarize = summarizerAI.summarize(bodyJsonWithLink.getTxt());
        return ResponseEntity.ok(summarize);
    }




}
