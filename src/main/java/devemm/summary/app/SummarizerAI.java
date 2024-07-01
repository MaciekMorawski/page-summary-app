package devemm.summary.app;

import devemm.summary.ai.grok.GroqModel;
import devemm.summary.ai.grok.repo.GroqRepository;
import devemm.summary.ai.openai.NativeOpenAiChatDataModelIn;
import devemm.summary.ai.openai.PromptRole;
import devemm.summary.pojo.SimpleJsonText;
import devemm.summary.ai.prompt.PromptSummarization;
import devemm.summary.app.grabber.TxtGrabber;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service

@AllArgsConstructor
public class SummarizerAI {

    private final GroqRepository repositoryGroq;
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

        String talk = repositoryGroq.talk(nativeOpenAiChatDataModelIn);
        return new SimpleJsonText(talk);
    }

    private static void prepareMessages(String txtToSummarize, List<NativeOpenAiChatDataModelIn.Message> messages, NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn) {
        messages.add(nativeOpenAiChatDataModelIn.new Message(PromptRole.system, PromptSummarization.SYSTEM_ASSISTANT_ROLE_04.getPrompt()));
        messages.add(nativeOpenAiChatDataModelIn.new Message(PromptRole.user, txtToSummarize));
    }

    private static void setModelParams(NativeOpenAiChatDataModelIn nativeOpenAiChatDataModelIn, List<NativeOpenAiChatDataModelIn.Message> messages) {

        nativeOpenAiChatDataModelIn.setModel(GroqModel.LLAMA_3_70_B_8192.getModelName());
        nativeOpenAiChatDataModelIn.setMessages(messages);
        nativeOpenAiChatDataModelIn.setTemperature(0.1);
        nativeOpenAiChatDataModelIn.setMaxTokens(1024);
        nativeOpenAiChatDataModelIn.setTopP(0);
        nativeOpenAiChatDataModelIn.setStream(false);
        nativeOpenAiChatDataModelIn.setStop(null);
    }

}
