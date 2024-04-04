package devemm.summary.restdatacenter.youtube;

import devemm.summary.pojo.SimpleJsonText;
import devemm.summary.summary.MyComponents;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestClient;

@Repository


public class WebsiteTxtExtractor {

    private final MyComponents components;
    private final RestClient restClient;

    WebsiteTxtExtractor(@Value("${youtube.caption.extractor.url}") String url, MyComponents myComponents) {
        restClient = RestClient.create(url);
        components = myComponents;
    }

    public SimpleJsonText grabCaptionsFromYouTube(String videoId) {
        return restClient.get().uri("/extract_caption/" + videoId)
                .retrieve()
                .body(SimpleJsonText.class);
    }

    public SimpleJsonText getMainArticle(String url){
        SimpleJsonText simpleJsonText = new SimpleJsonText(url);
        String body = restClient.post().uri("/extract_main_article")
                .contentType(MediaType.APPLICATION_JSON)
                .body(simpleJsonText)
                .retrieve()
                .body(String.class);

        return null;

    }
}

