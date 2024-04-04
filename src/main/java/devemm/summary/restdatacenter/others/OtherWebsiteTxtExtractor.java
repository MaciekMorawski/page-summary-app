package devemm.summary.restdatacenter.others;

import devemm.summary.beans.MyComponents;
import devemm.summary.pojo.OtherJsonText;
import devemm.summary.pojo.SimpleJsonText;

import devemm.summary.pojo.UrlOfWebpage;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestClient;

@Repository

public class OtherWebsiteTxtExtractor  {

    private final RestClient restClient;
    private final MyComponents components;

    OtherWebsiteTxtExtractor(@Value("${txt.extractor.url}") String url, MyComponents myComponents) {
        restClient = RestClient.create(url);
        components = myComponents;
    }

    public OtherJsonText getMainArticle(String url) {
        UrlOfWebpage urlOfWebpage = new UrlOfWebpage(url);
        return restClient.post().uri("/extract_main_article")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .body(urlOfWebpage)
                .retrieve()
                .body(OtherJsonText.class);

//        OtherJsonText otherJsonText = components.getGson().fromJson(body, OtherJsonText.class);
//
//        return  otherJsonText;
    }
}

