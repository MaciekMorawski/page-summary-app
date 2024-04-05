package devemm.summary.tool;

import devemm.summary.pojo.SimpleJsonText;
import devemm.summary.summary.StrategyFromUrl;

public class PathChooser {
    public static StrategyFromUrl getStrategyFromUrl(SimpleJsonText bodyJsonWithLink) {
        return switch (bodyJsonWithLink.getTxt()) {
            case String url when url.contains("youtube") -> StrategyFromUrl.YOUTUBE;
            default -> StrategyFromUrl.OTHERS;
        };
    }
}
