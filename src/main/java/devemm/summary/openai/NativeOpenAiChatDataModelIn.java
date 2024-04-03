package devemm.summary.openai;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.util.ArrayList;
import java.util.List;


@Getter
@Setter
@ToString
public final class NativeOpenAiChatDataModelIn {

    @SerializedName("messages")
    @Expose
    private List<Message> messages = new ArrayList<>();
    @SerializedName("model")
    @Expose
    private String model;
    @SerializedName("temperature")
    @Expose
    private Double temperature;
    @SerializedName("max_tokens")
    @Expose
    private Integer maxTokens;
    @SerializedName("top_p")
    @Expose
    private Integer topP;
    @SerializedName("stream")
    @Expose
    private Boolean stream;
    @SerializedName("stop")
    @Expose
    private Object stop;


    @RequiredArgsConstructor
    public class Message {
        @SerializedName("role")
        @Expose
        final private PromptRole role;
        @SerializedName("content")
        @Expose
        final private String content;
    }
}
