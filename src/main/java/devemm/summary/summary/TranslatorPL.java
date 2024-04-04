package devemm.summary.summary;


import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import devemm.summary.grok.repository.RepositoryGroq;
import devemm.summary.openai.NativeOpenAiChatDataModelIn;
import devemm.summary.openai.PromptRole;
import devemm.summary.pojo.SimpleJsonText;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TranslatorPL {

    private final RepositoryGroq repositoryGroq;

    SimpleJsonText translateEnToPl(SimpleJsonText sumarize) {
        NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn = new NativeOpenAiChatDataModelIn();

        List<NativeOpenAiChatDataModelIn.Message> messages = new NativeOpenAiChatDataModelIn().getMessages();

        messages.add(nativeOpenAiChatDataModelIn.new Message(PromptRole.user,   translateBewlowEnToPl(sumarize.getTxt())));

        nativeOpenAiChatDataModelIn.setModel("llama2-70b-4096");
        nativeOpenAiChatDataModelIn.setMessages(messages);
        nativeOpenAiChatDataModelIn.setTemperature(0.1);
        nativeOpenAiChatDataModelIn.setMaxTokens(1024);
        nativeOpenAiChatDataModelIn.setTopP(0);
        nativeOpenAiChatDataModelIn.setStream(false);
        nativeOpenAiChatDataModelIn.setStop(null);

        String talk = repositoryGroq.talk(nativeOpenAiChatDataModelIn);

        return new SimpleJsonText(talk);
    }

    private String translateBewlowEnToPl(String txt) {
        return "Przetłumacz poniższy tekst na jezyk polski: \n" + txt;
    }
}
