package devemm.summary.summary;

import devemm.summary.summary.grabber.OthersGrabber;
import devemm.summary.summary.grabber.TxtGrabber;
import devemm.summary.summary.grabber.YouTubeGrabber;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum StrategyFromUrl {

    OTHERS(OthersGrabber.getOthersGrabberInstance()),
    YOUTUBE(YouTubeGrabber.getYoutubeGrabberInstance());

    private final TxtGrabber txtGrabber;

}
