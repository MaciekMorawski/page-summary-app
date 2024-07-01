package devemm.summary.pojo;

import com.fasterxml.jackson.annotation.JsonProperty;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;

public record SimpleJsonText(
        @JsonProperty("txt") @NotBlank(message = "txt cannot be blank") @NotNull(message = "txt cannot be null") @Pattern(regexp = "^(https?):\\/\\/[^\\s/$.?#].[^\\s]*$", message = "txt is not valid url") String txt) {
}
