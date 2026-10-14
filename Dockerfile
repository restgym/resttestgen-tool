# Pinned to a digest, since a tag moves to the newest build of the Java release
FROM eclipse-temurin:24-jre-alpine@sha256:4044b6c87cb088885bcd0220f7dc7a8a4aab76577605fa471945d2e98270741f

COPY ./tools/resttestgen/resttestgen-v25.12.jar /app/app.jar
COPY ./tools/resttestgen/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
