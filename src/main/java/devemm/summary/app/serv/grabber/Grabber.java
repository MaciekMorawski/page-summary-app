package devemm.summary.app.serv.grabber;


import lombok.NonNull;
import org.springframework.stereotype.Service;

@Service
public class Grabber {
    private TxtGrabber txtGrabber;

    public String grab(TxtGrabber txtGrabber, @NonNull String url) {
        return txtGrabber.getTxtFromUrl(url);
    }


}
