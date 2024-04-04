package devemm.summary.beans;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class MyComponents {


    @Bean
    public Gson getGson() {
        return new GsonBuilder().setPrettyPrinting().create();
    }


//    @Bean
//    public Map<StrategyFromUrl, TxtGrabber> strategyMap() {
//        return Map.of(
//                StrategyFromUrl.YOUTUBE, youtubeGrabber.getYoutubeGrabberInstance()
//                , StrategyFromUrl.OTHERS, othersGrabber.getOthersGrabberInstance()
//        );
//    }


}
