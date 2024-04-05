package devemm.summary.summary;

import devemm.summary.summary.grabber.OthersGrabber;
import devemm.summary.summary.grabber.TxtGrabber;
import devemm.summary.summary.grabber.YouTubeGrabber;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

import java.util.Map;


@Component
@RequiredArgsConstructor
public class StrategyMap {
    private final YouTubeGrabber youtubeGrabber;
    private final OthersGrabber othersGrabber;

    public Map<StrategyFromUrl, TxtGrabber> getStrategyMap() {
        return Map.of(
                StrategyFromUrl.YOUTUBE, youtubeGrabber.getYoutubeGrabberInstance()
                , StrategyFromUrl.OTHERS, othersGrabber.getOthersGrabberInstance()
        );

    }
}
