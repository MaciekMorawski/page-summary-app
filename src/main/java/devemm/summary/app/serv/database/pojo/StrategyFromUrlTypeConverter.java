package devemm.summary.app.serv.database.pojo;

import devemm.summary.app.serv.strategychooser.StrategyFromUrl;
import jakarta.persistence.AttributeConverter;

import java.util.Arrays;

public class StrategyFromUrlTypeConverter implements AttributeConverter<StrategyFromUrl, String> {
    @Override
    public String convertToDatabaseColumn(StrategyFromUrl strategy) {
        return strategy.name();
    }

    @Override
    public StrategyFromUrl convertToEntityAttribute(String strategyName) {
        return Arrays.stream(StrategyFromUrl.values()).filter(strategyFromUrl -> strategyFromUrl.name().equals(strategyName)).findFirst().orElse(null);
    }
}
