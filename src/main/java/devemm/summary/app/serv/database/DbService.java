package devemm.summary.app.serv.database;


import devemm.summary.app.serv.database.pojo.WebPage;
import devemm.summary.app.serv.database.pojo.WebPageDto;
import devemm.summary.app.serv.database.pojo.WebPageMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@AllArgsConstructor
public class DbService  {

    private final DbRepo dbRepo;
    private final WebPageMapper webPageMapper;

    public Optional<WebPageDto> returnWebPageInfoIfExists(String url) {
        return dbRepo.findByUrl(url.trim()).map(webPageMapper::toDto);
    }

    public WebPageDto saveWebPage(String url, String summarize, String toSummarize) {
        WebPage webPage = new WebPage();
        webPage.setUrl(url.trim());
        webPage.setSummary(summarize);
        webPage.setOryginalText(toSummarize);
        WebPage save = dbRepo.save(webPage);

        return webPageMapper.toDto(save);

    }
}
