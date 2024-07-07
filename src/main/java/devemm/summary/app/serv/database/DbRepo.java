package devemm.summary.app.serv.database;

import devemm.summary.app.serv.database.pojo.WebPage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.NonNull;

import java.util.Optional;

public interface DbRepo extends JpaRepository<WebPage, Long> {
//    @Query("select w from WebPage w where w.url = ?1")
    @Query("select w from WebPage w where w.url = :url")
    Optional<WebPage> findByUrl(@Param("url") @NonNull String url);

}
