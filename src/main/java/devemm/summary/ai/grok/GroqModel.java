package devemm.summary.ai.grok;

import lombok.Getter;

@Getter
public enum GroqModel {
    LLAMA_3_70_B_8192("llama3-70b-8192"),
    GEMMA2_9B_IT("gemma2-9b-it"),
    ;

    private final String modelName;

    GroqModel(String modelName) {
        this.modelName = modelName;
    }


}
