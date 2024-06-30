package devemm.summary.summary.translator;


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

        messages.add(nativeOpenAiChatDataModelIn.new Message(PromptRole.user, translateBelowEnToPl(txtToSummarize)));

        setupModelEngine(nativeOpenAiChatDataModelIn);
        setupModelMessages(nativeOpenAiChatDataModelIn, messages);

        return repositoryGroq.talk(nativeOpenAiChatDataModelIn);

    }

    private void setupModelMessages(NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn, List<NativeOpenAiChatDataModelIn.Message> messages) {
        nativeOpenAiChatDataModelIn.setMessages(messages);
    }

    private void setupModelEngine(NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn) {
        nativeOpenAiChatDataModelIn.setModel("llama2-70b-4096");
        nativeOpenAiChatDataModelIn.setTemperature(0.1);
        nativeOpenAiChatDataModelIn.setMaxTokens(1024);
        nativeOpenAiChatDataModelIn.setTopP(0);
        nativeOpenAiChatDataModelIn.setStream(false);
        nativeOpenAiChatDataModelIn.setStop(null);
    }

    private String translateBelowEnToPl(String txt) {
        return "Przetłumacz  tekst  na jezyk polski: \n" + txt;
    }
}
