package devemm.summary.summary;

import devemm.summary.pojo.SimpleJsonText;
import devemm.summary.summary.grabber.TxtGrabber;
import devemm.summary.tool.PathChooser;
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
    private final StrategyMap strategyMap;




//    private  final TxtGrabber grabber;




    @GetMapping()
    public String  hello() {
        return "Hi/Ai!";
    }

    @GetMapping("{video_id}")
    public SimpleJsonText see(@PathVariable(name = "video_id", required = true) String videoId) {
        SimpleJsonText sumarize = summarizerAI.summarize(videoId);
//        return translator.translateEnToPl(sumarize);
        return null;
    }

    @PostMapping()
    public SimpleJsonText see(@RequestBody SimpleJsonText bodyJsonWithLink) {
       //todo factory

        TxtGrabber txtGrabber = strategyMap.getStrategyMap().get(PathChooser.getStrategyFromUrl(bodyJsonWithLink));

        summarizerAI.setTxtGrabber(txtGrabber);

        return summarizerAI.summarize(bodyJsonWithLink.getTxt());
    }






}
