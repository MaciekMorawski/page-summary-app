package devemm.summary.pojo;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@RequiredArgsConstructor
public class UrlOfWebpage {
    @JsonProperty("url_of_webpage")
    private final String urlOfWebpage;
}
