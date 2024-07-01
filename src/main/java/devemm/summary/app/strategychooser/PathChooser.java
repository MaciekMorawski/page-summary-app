package devemm.summary.app.strategychooser;

import devemm.summary.pojo.SimpleJsonText;

public class PathChooser {
    public static StrategyFromUrl getStrategyFromUrl(SimpleJsonText bodyJsonWithLink) {
        return switch (bodyJsonWithLink.getTxt()) {
            case String url when url.contains("youtube") -> StrategyFromUrl.YOUTUBE;
            default -> StrategyFromUrl.OTHERS;
        };
    }
}
