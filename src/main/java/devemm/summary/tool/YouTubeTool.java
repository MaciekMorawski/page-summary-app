package devemm.summary.tool;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class YouTubeTool {

    private static final String pattern = "(?<=watch\\?v=|/videos/|embed/|youtu.be/|/v/|/e/|watch\\?v%3D|watch\\?feature=player_embedded&v=|%2Fvideos%2F|embed%\u200C\u200B2F|youtu.be%2F|%2Fv%2F)[^#&?\\n]*";
    private static final Pattern compiledPattern = Pattern.compile(pattern);

    public static String getVideoId(String url) {
        Matcher matcher = compiledPattern.matcher(url);
        if (matcher.find()) {
            return matcher.group();
        }
        return null;
    }
}
