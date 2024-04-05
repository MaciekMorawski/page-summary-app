package devemm.summary.restdatacenter.others;

import devemm.summary.beans.MyComponents;
import devemm.summary.pojo.OtherJsonText;
import devemm.summary.pojo.UrlOfWebpage;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestClient;

@Repository

public class OtherWebsiteTxtExtractor  {

    private final RestClient restClient;


    OtherWebsiteTxtExtractor(@Value("${txt.extractor.url}") String url) {
        restClient = RestClient.create(url);
    }

    public OtherJsonText getMainArticle(String url) {
        UrlOfWebpage urlOfWebpage = new UrlOfWebpage(url);
        return restClient.post().uri("/extract_main_article")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .body(urlOfWebpage)
                .retrieve()
                .body(OtherJsonText.class);


    }
}

