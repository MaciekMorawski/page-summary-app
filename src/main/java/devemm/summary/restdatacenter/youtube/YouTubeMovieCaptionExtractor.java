package devemm.summary.restdatacenter.youtube;

import devemm.summary.pojo.SimpleJsonText;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestClient;

@Repository
public class YouTubeMovieCaptionExtractor {


    private final RestClient restClient;

    YouTubeMovieCaptionExtractor(@Value("${txt.extractor.url}") String url) {
        restClient = RestClient.create(url);
    }

    public SimpleJsonText grabCaptionsFromYouTube(String videoId) {
        return restClient.get().uri("/extract_caption/" + videoId)
                .retrieve()
                .body(SimpleJsonText.class);
    }


}

