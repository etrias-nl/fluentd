FROM rancher/mirrored-banzaicloud-fluentd:v1.14.5-alpine-1
LABEL maintainer "Christ-Jan Prinse <christ-jan@etrias.nl>"

USER root

### Install custom Fluentd plugins
RUN gem install 'fluent-plugin-input-gelf' -v 0.3.2
RUN gem install 'fluent-plugin-logentries_ssl' -v 0.2.0
RUN gem install 'fluent-plugin-route' -v 1.0.0
RUN gem install fluent-plugin-loomsystems -v 0.0.1

EXPOSE 24224 5140 12201

USER fluent