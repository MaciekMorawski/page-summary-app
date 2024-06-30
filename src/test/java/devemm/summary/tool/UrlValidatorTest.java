package devemm.summary.tool;

import static org.junit.jupiter.api.Assertions.*;

class UrlValidatorTest {

    @org.junit.jupiter.api.Test
    void isValid() {
        assertThrows(BadUrlException.class, () -> UrlValidator.isValid(null));
    }

    @org.junit.jupiter.api.Test
    void isValid2() {
        assertThrows(BadUrlException.class, () -> UrlValidator.isValid(""));
    }

    @org.junit.jupiter.api.Test
    void isValid3() throws BadUrlException {
        assertTrue( UrlValidator.isValid("https://www.google.com"));
    }
}