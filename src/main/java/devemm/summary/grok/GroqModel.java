package devemm.summary.grok;

import lombok.Getter;

@Getter
public enum GroqModel {
    LLAMA_3_70_B_8192("llama3-70b-8192")
    ;

    private final String modelName;

    GroqModel(String modelName) {
        this.modelName = modelName;
    }


}
