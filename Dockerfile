FROM eclipse-temurin:24-jre-alpine

COPY ./tools/resttestgen/resttestgen-v25.12.jar /app/app.jar
COPY ./tools/resttestgen/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
