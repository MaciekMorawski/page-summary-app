package devemm.summary.app.serv.database.pojo;


import org.springframework.stereotype.Component;

@Component
public class WebPageMapper {
        public WebPageDto toDto(WebPage webPage) {
            WebPageDto webPageDto = new WebPageDto();
            webPageDto.setUuid(webPage.getUuid());
            webPageDto.setUrl(webPage.getUrl());
            webPageDto.setDateInserted(webPage.getDateInserted());
            webPageDto.setSummary(webPage.getSummary());
            webPageDto.setOryginalText(webPage.getOryginalText());
            webPageDto.setApi(webPage.getApi());
            webPageDto.setModel(webPage.getModel());
            return webPageDto;
        }
}
