package devemm.summary.beans;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
public class MyComponents {
    @Bean
    public Gson getGson() {
        return new GsonBuilder().setPrettyPrinting().create();
    }
}
