package devemm.summary.pojo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SimpleJsonText
{
    @JsonProperty("txt")
    private String txt;

    SimpleJsonText() {
    }

    public SimpleJsonText(String talk) {
        this.txt = talk;
    }
}
