FROM java:8-jre-alpine

LABEL maintainer="https://github.com/abousselmi"

ENV S2M_CLI_URL=central.maven.org/maven2/io/github/swagger2markup/swagger2markup-cli
ENV S2M_CLI_VERSION=1.3.3

RUN apk add --update --no-cache curl \
  && curl -s $S2M_CLI_URL/$S2M_CLI_VERSION/swagger2markup-cli-$S2M_CLI_VERSION.jar > /cli.jar \
  && rm -rf /var/cache/apk/*

VOLUME [ "/data" ]

ENTRYPOINT [ "/usr/bin/java", "-jar", "/cli.jar" ]
