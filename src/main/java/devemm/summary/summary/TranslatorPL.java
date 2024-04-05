package devemm.summary.summary;


import devemm.summary.grok.repository.RepositoryGroq;
import devemm.summary.openai.NativeOpenAiChatDataModelIn;
import devemm.summary.openai.PromptRole;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class TranslatorPL {

    private final RepositoryGroq repositoryGroq;

    public String translateEnToPl(String txtToSummarize) {
        NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn = new NativeOpenAiChatDataModelIn();

        List<NativeOpenAiChatDataModelIn.Message> messages = new NativeOpenAiChatDataModelIn().getMessages();

        messages.add(nativeOpenAiChatDataModelIn.new Message(PromptRole.user, translateBewlowEnToPl(txtToSummarize)));

        nativeOpenAiChatDataModelIn.setModel("llama2-70b-4096");
        nativeOpenAiChatDataModelIn.setMessages(messages);
        nativeOpenAiChatDataModelIn.setTemperature(0.1);
        nativeOpenAiChatDataModelIn.setMaxTokens(1024);
        nativeOpenAiChatDataModelIn.setTopP(0);
        nativeOpenAiChatDataModelIn.setStream(false);
        nativeOpenAiChatDataModelIn.setStop(null);

        return repositoryGroq.talk(nativeOpenAiChatDataModelIn);

    }

    private String translateBewlowEnToPl(String txt) {
        return "Przetłumacz  tekst  na jezyk polski: \n" + txt;
    }
}
