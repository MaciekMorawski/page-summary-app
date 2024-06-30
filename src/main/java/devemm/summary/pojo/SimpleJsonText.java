package devemm.summary.pojo;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SimpleJsonText
{
    @JsonProperty("txt")
    @NotBlank(message = "txt cannot be blank")
    @NotNull(message = "txt cannot be null")
    @Pattern(regexp = "^(https?):\\/\\/[^\\s/$.?#].[^\\s]*$", message = "txt is not valid url")
    private String txt;

    SimpleJsonText() {
    }

    public SimpleJsonText(String talk) {
        this.txt = talk;
    }
}
