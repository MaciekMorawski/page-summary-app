package devemm.summary.grok.repository;


import com.google.gson.Gson;
import devemm.summary.openai.NativeOpenAiChatDataModelIn;
import devemm.summary.openai.NativeOpenAiChatDataModelOut;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Repository;
import org.springframework.web.client.RestClient;

@Repository
public class RepositoryGroq {
    private final RestClient restClientGrok;

    RepositoryGroq() {
        this.restClientGrok = RestClient.create("https://api.groq.com/openai/v1/chat/completions");
    }

    public String talk(NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn, Gson gson) {
        String token = "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";

        String bodyJson = restClientGrok.post()
                .headers(headers -> headers.setBearerAuth(token))
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .body(gson.toJson(nativeOpenAiChatDataModelIn))
                .retrieve()
                .body(String.class);

        return gson.fromJson(bodyJson, NativeOpenAiChatDataModelOut.class)
                .getChoices().getFirst().getMessage().getContent();
    }
}
