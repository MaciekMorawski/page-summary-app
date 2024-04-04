package devemm.summary.summary;

import devemm.summary.pojo.SimpleJsonText;
import devemm.summary.summary.process.OthersGrabber;
import devemm.summary.summary.process.TxtGrabber;
import devemm.summary.summary.process.YouTubeGrabber;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.*;


@RequestMapping("utube")
@RestController
@RequiredArgsConstructor
@Log4j2
public class CtrlSumaryzacja {


    private final SummarizerAI summarizerAI;
    private final TranslatorPL translator;

    private final YouTubeGrabber youtubeGrabber;
    private final OthersGrabber othersGrabber;

//    private  final TxtGrabber grabber;




    @GetMapping()
    public String  hello() {
        return "Hi/Ai!";
    }

    @GetMapping("{video_id}")
    public SimpleJsonText see(@PathVariable(name = "video_id", required = true) String videoId) {

        SimpleJsonText sumarize = summarizerAI.summarize(videoId);
        return translator.translateEnToPl(sumarize);
    }

    @PostMapping()
    public SimpleJsonText see(@RequestBody SimpleJsonText bodyJsonWithLink) {
       //todo factory

        if (true) {
            summarizerAI.setTxtGrabber(youtubeGrabber);
        } else {
            summarizerAI.setTxtGrabber(othersGrabber);
        }


        SimpleJsonText summarize = summarizerAI.summarize(bodyJsonWithLink.getTxt());

        return summarize;
    }





}
