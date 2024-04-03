package devemm.summary.summary;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import devemm.summary.grok.repository.RepositoryGroq;
import devemm.summary.openai.NativeOpenAiChatDataModelIn;
import devemm.summary.openai.PromptRole;
import devemm.summary.pojo.SimpleJsonText;
import devemm.summary.prompt.PromptSummarization;
import devemm.summary.restdatacenter.RepositoryExtraction;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ServiceExtractorYt {

    private final RepositoryExtraction repositoryExtraction;
    private final RepositoryGroq repositoryGroq;


    SimpleJsonText summarize(String videoId) {
        SimpleJsonText responseFromExtract = repositoryExtraction.grabCaptions(videoId);

        NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn = new NativeOpenAiChatDataModelIn();

        List<NativeOpenAiChatDataModelIn.Message> messages = new NativeOpenAiChatDataModelIn().getMessages();

        messages.add(nativeOpenAiChatDataModelIn.new Message(PromptRole.system, PromptSummarization.SYSTEM_ASSISTANT_ROLE_04.getPrompt()));
        messages.add(nativeOpenAiChatDataModelIn.new Message(PromptRole.user, responseFromExtract.getTxt()));

//        nativeOpenAiChatDataModelIn.setModel("mixtral-8x7b-32768");
        nativeOpenAiChatDataModelIn.setModel("llama2-70b-4096");
        nativeOpenAiChatDataModelIn.setMessages(messages);
        nativeOpenAiChatDataModelIn.setTemperature(0.1);
        nativeOpenAiChatDataModelIn.setMaxTokens(1024);
        nativeOpenAiChatDataModelIn.setTopP(0);
        nativeOpenAiChatDataModelIn.setStream(false);
        nativeOpenAiChatDataModelIn.setStop(null);

        Gson gson = new GsonBuilder().setPrettyPrinting().create();

        String talk = repositoryGroq.talk(nativeOpenAiChatDataModelIn, gson);

        return new SimpleJsonText(talk);


    }

}
