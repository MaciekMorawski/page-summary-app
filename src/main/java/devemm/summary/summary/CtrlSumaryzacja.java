package devemm.summary.summary;

import devemm.summary.pojo.SimpleJsonText;
import devemm.summary.summary.grabber.OthersGrabber;
import devemm.summary.summary.grabber.TxtGrabber;
import devemm.summary.summary.grabber.YouTubeGrabber;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.web.bind.annotation.*;

import java.util.Map;


@RequestMapping("utube")
@RestController
@RequiredArgsConstructor
@Log4j2
public class CtrlSumaryzacja {


    private final SummarizerAI summarizerAI;
    private final TranslatorPL translator;
//    private final Map<StrategyFromUrl, TxtGrabber> strategyMap;

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
//        return translator.translateEnToPl(sumarize);
        return null;
    }

    @PostMapping()
    public SimpleJsonText see(@RequestBody SimpleJsonText bodyJsonWithLink) {
       //todo factory

        TxtGrabber txtGrabber = initStrategyMap().get(getStrategyFromUrl(bodyJsonWithLink));

        summarizerAI.setTxtGrabber(txtGrabber);

        SimpleJsonText summarize = summarizerAI.summarize(bodyJsonWithLink.getTxt());

        return summarize;
    }

    private Map<StrategyFromUrl, TxtGrabber> initStrategyMap() {
        return Map.of(
                StrategyFromUrl.YOUTUBE, youtubeGrabber.getYoutubeGrabberInstance()
                , StrategyFromUrl.OTHERS, othersGrabber.getOthersGrabberInstance()
        );

    }

    private static StrategyFromUrl getStrategyFromUrl(SimpleJsonText bodyJsonWithLink) {
        if (bodyJsonWithLink.getTxt().contains("youtube")) {
            return StrategyFromUrl.YOUTUBE;
        } else {
            return StrategyFromUrl.OTHERS;
        }

    }


}
