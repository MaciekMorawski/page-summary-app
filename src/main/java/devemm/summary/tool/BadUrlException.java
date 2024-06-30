package devemm.summary.tool;

import lombok.extern.log4j.Log4j2;

@Log4j2
public class BadUrlException extends Throwable {
    BadUrlException() {
        log.error("Bad-Url-Exception");
    }
}
