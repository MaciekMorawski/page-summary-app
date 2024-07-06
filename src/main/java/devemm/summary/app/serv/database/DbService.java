package devemm.summary.app.serv.database;


import devemm.summary.app.serv.database.pojo.WebPage;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@AllArgsConstructor
public class DbService  {

    private final DbRepo dbRepo;

    public Optional<WebPage> returnWebPageInfoIfExists(String url) {
        return dbRepo.findByUrl(url.trim());

    }

    public void saveWebPage(String url, String summarize) {
        WebPage webPage = new WebPage();
        webPage.setUrl(url.trim());
        webPage.setSummary(summarize);
        dbRepo.save(webPage);
    }
}
