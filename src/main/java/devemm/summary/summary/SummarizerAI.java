package devemm.summary.summary;

import devemm.summary.grok.repository.RepositoryGroq;
import devemm.summary.openai.NativeOpenAiChatDataModelIn;
import devemm.summary.openai.PromptRole;
import devemm.summary.pojo.SimpleJsonText;
import devemm.summary.prompt.PromptSummarization;
import devemm.summary.summary.process.TxtGrabber;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

@AllArgsConstructor
public class SummarizerAI {

    private final RepositoryGroq repositoryGroq;
    private final MyComponents components;
    private TxtGrabber txtGrabber;

    void setTxtGrabber(TxtGrabber txtGrabber) {
        this.txtGrabber = txtGrabber;
    }

    SimpleJsonText summarize(String url) {

        String txtToSummarize = txtGrabber.getTxtFromUrl(url);

        NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn = new NativeOpenAiChatDataModelIn();

        List<NativeOpenAiChatDataModelIn.Message> messages = new NativeOpenAiChatDataModelIn().getMessages();

        prepareMessages(txtToSummarize, messages, nativeOpenAiChatDataModelIn);

        setModelParams(nativeOpenAiChatDataModelIn, messages);

        String talk = repositoryGroq.talk(nativeOpenAiChatDataModelIn, components.getGson());
        return new SimpleJsonText(talk);
    }

    private static void prepareMessages(String txtToSummarize, List<NativeOpenAiChatDataModelIn.Message> messages, NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn) {
        messages.add(nativeOpenAiChatDataModelIn.new Message(PromptRole.system, PromptSummarization.SYSTEM_ASSISTANT_ROLE_04.getPrompt()));
        messages.add(nativeOpenAiChatDataModelIn.new Message(PromptRole.user, txtToSummarize));
    }

    private static void setModelParams(NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn, List<NativeOpenAiChatDataModelIn.Message> messages) {
//        nativeOpenAiChatDataModelIn.setModel("mixtral-8x7b-32768");
        nativeOpenAiChatDataModelIn.setModel("llama2-70b-4096");
        nativeOpenAiChatDataModelIn.setMessages(messages);
        nativeOpenAiChatDataModelIn.setTemperature(0.1);
        nativeOpenAiChatDataModelIn.setMaxTokens(1024);
        nativeOpenAiChatDataModelIn.setTopP(0);
        nativeOpenAiChatDataModelIn.setStream(false);
        nativeOpenAiChatDataModelIn.setStop(null);
    }

}
