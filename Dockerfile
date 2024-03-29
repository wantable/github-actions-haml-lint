FROM ruby:3.1.4-alpine
RUN apk add --no-cache --update build-base linux-headers git

LABEL com.github.actions.name="HAML Lint Code Checks"
LABEL com.github.actions.description="Lint your Ruby code in parallel to your builds"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="red"
LABEL "version"="0.0.2"

LABEL maintainer="Wantable"

COPY lib /action/lib
ENTRYPOINT ["/action/lib/entrypoint.sh"]
