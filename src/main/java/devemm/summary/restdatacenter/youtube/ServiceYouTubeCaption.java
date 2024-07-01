package devemm.summary.restdatacenter.youtube;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ServiceYouTubeCaption {
    private final YouTubeMovieCaptionExtractor websiteTxtExtractor;

    public String grabTxtUsingVideoId(String videoId) {
        return websiteTxtExtractor.grabCaptionsFromYouTube(videoId).getTxt();
    }



}
