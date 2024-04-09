FROM bellsoft/liberica-runtime-container:jre-21-slim-musl
LABEL authors="mmorawski"
VOLUME /tmp
COPY ./target/summary-0.0.*.jar app.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "/app.jar"]