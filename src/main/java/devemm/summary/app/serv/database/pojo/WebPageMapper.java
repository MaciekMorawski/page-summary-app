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

        public WebPage fromDto(WebPageDto webPageDto) {
            WebPage webPage = new WebPage();
            webPage.setUuid(webPageDto.getUuid());
            webPage.setUrl(webPageDto.getUrl());
            webPage.setDateInserted(webPageDto.getDateInserted());
            webPage.setSummary(webPageDto.getSummary());
            webPage.setOryginalText(webPageDto.getOryginalText());
            webPage.setApi(webPageDto.getApi());
            webPage.setModel(webPageDto.getModel());
            return webPage;
        }
}
