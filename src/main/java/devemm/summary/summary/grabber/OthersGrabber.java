package devemm.summary.summary.grabber;


import devemm.summary.restdatacenter.others.ServiceOthers;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

@Service
@Qualifier("OtherGrabber")
//@RequiredArgsConstructor
public class OthersGrabber implements TxtGrabber{

    private final ServiceOthers serviceOthers;

    @Getter
    private static  OthersGrabber othersGrabberInstance;


    OthersGrabber(ServiceOthers serviceOthers) {
        this.serviceOthers = serviceOthers;
        othersGrabberInstance = this;
    }

    @Override
    public String getTxtFromUrl(String url) {
        return serviceOthers.grabOtherTxtUsingUrl(url);
    }
}
