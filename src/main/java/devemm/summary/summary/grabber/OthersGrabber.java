package devemm.summary.summary.grabber;


import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
@Qualifier("OtherGrabber")
@RequiredArgsConstructor
public class OthersGrabber implements TxtGrabber{
    @Override
    public String getTxtFromUrl(String url) {
        return null;
    }
}
