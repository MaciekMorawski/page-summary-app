package devemm.summary.app.strategychooser;



public class PathChooser {
    public static StrategyFromUrl getStrategyFromUrl(String urlIn) {
        return switch (urlIn) {
            case String url when url.contains("youtube") -> StrategyFromUrl.YOUTUBE;
            default -> StrategyFromUrl.OTHERS;
        };
    }
}
