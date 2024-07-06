package devemm.summary.app.serv.database;


import devemm.summary.app.serv.database.pojo.WebPage;
import devemm.summary.app.serv.database.pojo.WebPageDto;
import devemm.summary.app.serv.database.pojo.WebPageInfo;
import devemm.summary.app.serv.database.pojo.WebPageMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@AllArgsConstructor
public class DbService  {

    private final DbRepo dbRepo;
    private final WebPageMapper webPageMapper;

    public Optional<WebPageInfo> returnWebPageInfoIfExists(String url) {
        return dbRepo.findByUrl(url.trim());
    }

    public WebPageDto saveWebPage(String url, String summarize) {
        WebPage webPage = new WebPage();
        webPage.setUrl(url.trim());
        webPage.setSummary(summarize);
        WebPage save = dbRepo.save(webPage);

        return webPageMapper.toDto(save);

    }
}
