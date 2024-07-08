package devemm.summary.beans;

import org.springframework.ai.reader.TextReader;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;


import java.util.Arrays;
import java.util.List;

@Component
public class MyTextReader {

    private final Resource resource;

    MyTextReader(@Value("classpath:example-links.txt") Resource resource) {
        this.resource = resource;
    }
    public List<String> loadText() {
//        var spliter = "\\R";
        TextReader textReader = new TextReader(resource);
        return Arrays.stream(textReader.get().get(0).getContent().split(System.lineSeparator())).toList();
    }
}


