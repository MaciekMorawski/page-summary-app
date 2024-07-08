package devemm.summary.app.serv.grabber;

import devemm.summary.app.serv.translate.TranslatorPL;
import devemm.summary.restdatacenter.youtube.ServiceYouTubeCaption;
import devemm.summary.tool.YouTubeTool;
import lombok.Getter;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

@Primary
@Service
@Qualifier("YouTubeGrabber")
@Log4j2
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
        log.debug("Get txt from url: {}", url);
        String videoId = YouTubeTool.getVideoId(url);
        String toSummary = serviceYouTubeCaption.grabTxtUsingVideoId(videoId);
        log.debug("To summary: {}", toSummary);
        String translated = translator.translateEnToPl(toSummary);
        log.debug("Translated: {}", translated);
        return translated;
    }
}
