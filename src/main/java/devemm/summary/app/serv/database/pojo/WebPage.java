package devemm.summary.app.serv.database.pojo;


import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import java.util.UUID;

import java.time.LocalDateTime;

@Getter
@Setter
@Entity
public class WebPage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private UUID uuid;

    private String url;

    @CreationTimestamp
    @Column(updatable = false)
    private LocalDateTime dateInserted;

    @Column(columnDefinition = "TEXT")
    private String summary;

    @Column(columnDefinition = "TEXT")
    private String oryginalText;

    private String api;

    private String model;


    @PrePersist
    @Column(updatable = false)
    private void generateUuid() {
        if (uuid == null) {
            uuid = UUID.randomUUID();
        }
    }

}
