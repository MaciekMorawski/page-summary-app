package devemm.summary.app.serv.database.pojo;

import org.springframework.beans.factory.annotation.Value;

import java.util.UUID;

/**
 * Projection for {@link devemm.summary.app.serv.database.pojo.WebPage}
 */
public interface WebPageInfo {

    UUID getUuid();

    String getSummary();

}