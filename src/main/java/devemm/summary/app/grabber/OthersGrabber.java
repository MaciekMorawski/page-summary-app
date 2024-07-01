package devemm.summary.app.grabber;


import devemm.summary.restdatacenter.others.OtherService;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
@Qualifier("OtherGrabber")
public class OthersGrabber implements TxtGrabber{

    private final OtherService serviceOthers;

    @Getter
    private static  OthersGrabber othersGrabberInstance;


    OthersGrabber(OtherService serviceOthers) {
        this.serviceOthers = serviceOthers;
        othersGrabberInstance = this;
    }

    @Override
    public String getTxtFromUrl(String url) {
        return serviceOthers.grabOtherTxtUsingUrl(url);
    }
}
