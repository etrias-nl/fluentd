FROM bitnami/fluentd:1.14.6
LABEL maintainer "Christ-Jan Prinse <christ-jan@etrias.nl>"

USER root

### Install custom Fluentd plugins
RUN fluent-gem install 'fluent-plugin-input-gelf' -v 0.3.2

EXPOSE 24224 5140 12201

USER 1001