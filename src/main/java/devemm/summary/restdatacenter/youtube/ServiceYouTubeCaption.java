package devemm.summary.restdatacenter.youtube;

import devemm.summary.pojo.OtherJsonText;
import devemm.summary.pojo.SimpleJsonText;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ServiceYouTubeCaption {
    private final YouTubeMovieCaptionExtractor websiteTxtExtractor;

    public String grabTxtUsingVideoId(String videoId) {
        SimpleJsonText youtubeCaption = websiteTxtExtractor.grabCaptionsFromYouTube(videoId);
        return youtubeCaption.getTxt();
    }



}
