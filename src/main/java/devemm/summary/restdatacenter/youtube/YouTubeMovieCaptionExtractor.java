package devemm.summary.restdatacenter.youtube;

import devemm.summary.pojo.SimpleJsonText;
import devemm.summary.beans.MyComponents;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestClient;

@Repository
public class YouTubeMovieCaptionExtractor {

//    private final MyComponents components;
    private final RestClient restClient;

    YouTubeMovieCaptionExtractor(@Value("${txt.extractor.url}") String url, MyComponents myComponents) {
        restClient = RestClient.create(url);
//        components = myComponents;
    }

    public SimpleJsonText grabCaptionsFromYouTube(String videoId) {
        return restClient.get().uri("/extract_caption/" + videoId)
                .retrieve()
                .body(SimpleJsonText.class);
    }


}

