package devemm.summary.tool;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Deprecated
public class UrlValidator {
    private static final String URL_REGEX = "^(https?):\\/\\/[^\\s/$.?#].[^\\s]*$";
    private static final Pattern URL_PATTERN = Pattern.compile(URL_REGEX, java.util.regex.Pattern.CASE_INSENSITIVE);


    public static boolean isValid(String url) throws BadUrlException {
        if(url == null || url.isEmpty()) throw new BadUrlException();

        Matcher matcher = URL_PATTERN.matcher(url);
        return matcher.matches();
    }
}
