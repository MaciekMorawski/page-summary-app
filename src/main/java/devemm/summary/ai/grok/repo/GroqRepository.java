package devemm.summary.ai.grok.repo;


import devemm.summary.beans.MyGson;
import devemm.summary.ai.openai.NativeOpenAiChatDataModelIn;
import devemm.summary.ai.openai.NativeOpenAiChatDataModelOut;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestClient;

@Repository
public class GroqRepository {
    private final RestClient restClientGrok;
    private final MyGson components;

    @Value("${qroq.api.key}")
    private String token;

    GroqRepository(@Value("${groq.api.url}") String url, MyGson myComponents) {
        this.restClientGrok = RestClient.create(url);
        this.components=myComponents;
    }

    public String talk(NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn) {


        String bodyJson = restClientGrok.post()
                .uri("/v1/chat/completions")
                .headers(headers -> headers.setBearerAuth(token))
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .body(components.getGson().toJson(nativeOpenAiChatDataModelIn))
                .retrieve()
                .body(String.class);

        return components.getGson().fromJson(bodyJson, NativeOpenAiChatDataModelOut.class)
                .getChoices().getFirst().getMessage().getContent();
    }
}
