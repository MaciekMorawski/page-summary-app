package devemm.summary.restdatacenter.youtube;

import devemm.summary.pojo.SimpleJsonText;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ServiceYouTubeCaption {
    private final WebsiteTxtExtractor youTubeCaptionExtractor;

    public String grabTxtUsingVideoId(String videoId) {
        SimpleJsonText youtubeCaption = youTubeCaptionExtractor.grabCaptionsFromYouTube(videoId);
        return youtubeCaption.getTxt();
    }

}
