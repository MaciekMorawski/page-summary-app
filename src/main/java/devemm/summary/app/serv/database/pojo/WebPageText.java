package devemm.summary.app.serv.database.pojo;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Embeddable
public class WebPageText {

    @Column(columnDefinition = "TEXT")
    private String oryginalText;

    @Column(columnDefinition = "TEXT")
    private String summary;
}
