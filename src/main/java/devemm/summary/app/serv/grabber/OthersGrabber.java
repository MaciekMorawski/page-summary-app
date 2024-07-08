package devemm.summary.app.serv.grabber;


import devemm.summary.restdatacenter.others.OtherService;
import lombok.Getter;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service
@Qualifier("OtherGrabber")
@Log4j2
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
        log.debug("Get txt from url: {}", url);
        return serviceOthers.grabOtherTxtUsingUrl(url);
    }
}
