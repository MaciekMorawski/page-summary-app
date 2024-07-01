package devemm.summary.app.strategychooser;

import devemm.summary.app.grabber.OthersGrabber;
import devemm.summary.app.grabber.TxtGrabber;
import devemm.summary.app.grabber.YouTubeGrabber;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum StrategyFromUrl {

    OTHERS(OthersGrabber.getOthersGrabberInstance()),
    YOUTUBE(YouTubeGrabber.getYoutubeGrabberInstance());

    private final TxtGrabber txtGrabber;

}
