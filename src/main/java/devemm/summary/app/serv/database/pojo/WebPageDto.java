package devemm.summary.app.serv.database.pojo;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.UUID;

@Getter
@Setter
public class WebPageDto  {

    private UUID uuid;

    private String url;

    private LocalDateTime dateInserted;

    private String summary;

    private String oryginalText;

    private String api;

    private String model;

}
