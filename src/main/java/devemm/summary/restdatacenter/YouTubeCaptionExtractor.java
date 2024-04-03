package devemm.summary.restdatacenter;

import devemm.summary.pojo.SimpleJsonText;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestClient;

@Repository


public class YouTubeCaptionExtractor {

    private final RestClient restClient;

    YouTubeCaptionExtractor(@Value("${youtube.caption.extractor.url}") String url) {
        restClient = RestClient.create(url);
    }

    public SimpleJsonText grabCaptions(String videoId) {
        return restClient.get().uri("/extract_caption/" + videoId)
                .retrieve()
                .body(SimpleJsonText.class);
    }
}

