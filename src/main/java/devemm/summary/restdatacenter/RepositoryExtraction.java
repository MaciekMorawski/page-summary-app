package devemm.summary.restdatacenter;

import devemm.summary.pojo.SimpleJsonText;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestClient;

@Repository
public class RepositoryExtraction {


    private final RestClient restClient;

    RepositoryExtraction() {
        this.restClient = RestClient.create("http://localhost:5001");
    }

    public SimpleJsonText grabCaptions(String videoId) {
        return restClient.get().uri("/extract_caption/" +videoId)
                .retrieve()
                .body(SimpleJsonText.class);
    }

}
