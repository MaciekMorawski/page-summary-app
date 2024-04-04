package devemm.summary.summary.grabber;

import devemm.summary.restdatacenter.youtube.ServiceYouTubeCaption;
import devemm.summary.tool.YouTubeTool;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

@Primary
@Service
@Qualifier("YouTubeGrabber")
@RequiredArgsConstructor
public class YouTubeGrabber implements TxtGrabber {

    private final ServiceYouTubeCaption serviceYouTubeCaption;

//    public YouTubeGrabber() {
//        this.serviceYouTubeCaption = new ServiceYouTubeCaption
//    }

    @Override
    public String getTxtFromUrl(String url) {
        String videoId = YouTubeTool.getVideoId(url);
        return serviceYouTubeCaption.grabTxtUsingVideoId(videoId);
    }
}
