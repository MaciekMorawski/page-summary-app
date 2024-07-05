package devemm.summary.app.serv.strategychooser;

import devemm.summary.app.serv.grabber.OthersGrabber;
import devemm.summary.app.serv.grabber.TxtGrabber;
import devemm.summary.app.serv.grabber.YouTubeGrabber;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum StrategyFromUrl {

    OTHERS(OthersGrabber.getOthersGrabberInstance()),
    YOUTUBE(YouTubeGrabber.getYoutubeGrabberInstance());

    private final TxtGrabber txtGrabber;

}
