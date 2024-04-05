package devemm.summary.tool;

import devemm.summary.pojo.SimpleJsonText;
import devemm.summary.summary.StrategyFromUrl;

public class PathChooser {
    public static StrategyFromUrl getStrategyFromUrl(SimpleJsonText bodyJsonWithLink) {
        if (bodyJsonWithLink.getTxt().contains("youtube")) {
            return StrategyFromUrl.YOUTUBE;
        } else {
            return StrategyFromUrl.OTHERS;
        }

    }
}
