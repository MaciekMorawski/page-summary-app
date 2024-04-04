package devemm.summary.summary.grabber;

import devemm.summary.restdatacenter.youtube.ServiceYouTubeCaption;
import devemm.summary.summary.TranslatorPL;
import devemm.summary.tool.YouTubeTool;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

@Primary
@Service
@Qualifier("YouTubeGrabber")
//@RequiredArgsConstructor
public class YouTubeGrabber implements TxtGrabber {

    private final ServiceYouTubeCaption serviceYouTubeCaption;
    private final TranslatorPL translator;


    private final YouTubeGrabber youtubeGrabberInstance;
    @Bean(name = "YouTubeGrabberInstance")
    public YouTubeGrabber getYoutubeGrabberInstance() {
        return youtubeGrabberInstance;
    }

    YouTubeGrabber(ServiceYouTubeCaption serviceYouTubeCaption, TranslatorPL translator) {
        this.serviceYouTubeCaption = serviceYouTubeCaption;
        this.translator = translator;
        youtubeGrabberInstance = this;
    }

    //make singletone



    //    public YouTubeGrabber() {
//        this.serviceYouTubeCaption = new ServiceYouTubeCaption
//    }

    @Override
    public String getTxtFromUrl(String url) {
        String videoId = YouTubeTool.getVideoId(url);
        String sumarize = serviceYouTubeCaption.grabTxtUsingVideoId(videoId);
        return translator.translateEnToPl(sumarize);
    }
}
