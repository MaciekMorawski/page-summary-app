package devemm.summary.summary.grabber;

import devemm.summary.restdatacenter.youtube.ServiceYouTubeCaption;
import devemm.summary.summary.TranslatorPL;
import devemm.summary.tool.YouTubeTool;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

@Primary
@Service
@Qualifier("YouTubeGrabber")
public class YouTubeGrabber implements TxtGrabber {

    private final ServiceYouTubeCaption serviceYouTubeCaption;
    private final TranslatorPL translator;

    @Getter
    private static YouTubeGrabber youtubeGrabberInstance;


    YouTubeGrabber(ServiceYouTubeCaption serviceYouTubeCaption, TranslatorPL translator) {
        this.serviceYouTubeCaption = serviceYouTubeCaption;
        this.translator = translator;
        youtubeGrabberInstance = this;
    }



    @Override
    public String getTxtFromUrl(String url) {
        String videoId = YouTubeTool.getVideoId(url);
        String summarize = serviceYouTubeCaption.grabTxtUsingVideoId(videoId);
        return translator.translateEnToPl(summarize);
    }
}
