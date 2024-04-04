package devemm.summary.restdatacenter.others;

import devemm.summary.pojo.OtherJsonText;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ServiceOthers
{
    private final OtherWebsiteTxtExtractor otherWebsiteTxtExtractor;

    public String grabOtherTxtUsingUrl(String url) {
        OtherJsonText mainArticle = otherWebsiteTxtExtractor.getMainArticle(url);
        return mainArticle.joinFields();
    }
}
