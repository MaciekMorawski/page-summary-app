package devemm.summary.app.serv.grabber;


import lombok.NonNull;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Service
@Log4j2
public class Grabber {
//    private TxtGrabber txtGrabber;

    public String grab(TxtGrabber txtGrabber, @NonNull String url) {

        String txt = txtGrabber.getTxtFromUrl(url);
        log.debug("Txt: {}", txt);

        return txt;
    }


}
