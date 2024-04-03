package devemm.summary.openai;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;
import lombok.Getter;
import lombok.Setter;

import java.util.List;
@Getter
@Setter
public class NativeOpenAiChatDataModelOut {

    @SerializedName("id")
    @Expose
    private String id;
    @SerializedName("object")
    @Expose
    private String object;
    @SerializedName("created")
    @Expose
    private Integer created;
    @SerializedName("model")
    @Expose
    private String model;
    @SerializedName("choices")
    @Expose
    private List<Choice> choices;
    @SerializedName("usage")
    @Expose
    private Usage usage;
    @SerializedName("system_fingerprint")
    @Expose
    private Object systemFingerprint;

    @Getter
    @Setter
    public class Choice {

        @SerializedName("index")
        @Expose
        private Integer index;

        @SerializedName("message")
        @Expose
        private Message message;

        @SerializedName("logprobs")
        @Expose
        private Object logprobs;

        @SerializedName("finish_reason")
        @Expose
        private String finishReason;

    }

    @Getter
    @Setter
    public class Message {

        @SerializedName("role")
        @Expose
        private String role;

        @SerializedName("content")
        @Expose
        private String content;

    }

    @Getter
    @Setter
    public class Usage {

        @SerializedName("prompt_tokens")
        @Expose
        private Integer promptTokens;
        @SerializedName("prompt_time")
        @Expose
        private Float promptTime;
        @SerializedName("completion_tokens")
        @Expose
        private Integer completionTokens;
        @SerializedName("completion_time")
        @Expose
        private Float completionTime;
        @SerializedName("total_tokens")
        @Expose
        private Integer totalTokens;
        @SerializedName("total_time")
        @Expose
        private Float totalTime;

    }
}










