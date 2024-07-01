package devemm.summary.restdatacenter.others;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class OtherService {
    private final OtherWebsiteTxtExtractor otherWebsiteTxtExtractor;

    public String grabOtherTxtUsingUrl(String url) {
        return otherWebsiteTxtExtractor.getMainArticle(url).joinFields();
    }
}
