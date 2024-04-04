package devemm.summary.summary.grabber;


import devemm.summary.restdatacenter.others.ServiceOthers;
import devemm.summary.restdatacenter.youtube.ServiceYouTubeCaption;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Service;

@Service
@Qualifier("OtherGrabber")
//@RequiredArgsConstructor
public class OthersGrabber implements TxtGrabber{

    private final ServiceOthers serviceOthers;

    private final OthersGrabber othersGrabberInstance;

    @Bean(name = "OtherGrabberInstance")
    public OthersGrabber getOthersGrabberInstance() {
        return othersGrabberInstance;
    }

    OthersGrabber(ServiceOthers serviceOthers) {
        this.serviceOthers = serviceOthers;
        othersGrabberInstance = this;
    }

    @Override
    public String getTxtFromUrl(String url) {
        return serviceOthers.grabOtherTxtUsingUrl(url);
    }
}
