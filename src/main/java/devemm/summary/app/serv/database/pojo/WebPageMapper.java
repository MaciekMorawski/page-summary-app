package devemm.summary.app.serv.database.pojo;


import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

@Component
public class WebPageMapper {
//    private final ModelMapper modelMapper;

    public WebPageDto toDto(WebPage webPage) {
        WebPageDto webPageDto = new WebPageDto();
        webPageDto.setUuid(webPage.getUuid());
        webPageDto.setUrl(webPage.getUrl());
        webPageDto.setDateInserted(webPage.getDateInserted());
        webPageDto.getWebPageText().setSummary(webPage.getWebPageText().getSummary());
        webPageDto.getWebPageText().setOryginalText(webPage.getWebPageText().getOryginalText());
        webPageDto.setApi(webPage.getApi());
        webPageDto.setModel(webPage.getModel());

//        modelMapper.map(webPage, WebPageDto.class);
        return webPageDto;
    }

    public WebPage fromDto(WebPageDto webPageDto) {
        WebPage webPage = new WebPage();
        webPage.setUuid(webPageDto.getUuid());
        webPage.setUrl(webPageDto.getUrl());
        webPage.setDateInserted(webPageDto.getDateInserted());
        webPage.getWebPageText().setSummary(webPageDto.getWebPageText().getSummary());
        webPage.getWebPageText().setOryginalText(webPageDto.getWebPageText().getOryginalText());
        webPage.setApi(webPageDto.getApi());
        webPage.setModel(webPageDto.getModel());
        return webPage;
    }
}
