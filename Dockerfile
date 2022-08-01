FROM alpine
ENV ASSETS_DIR="/opt/smartentry/HEAD"
COPY smartentry.sh /sbin/smartentry.sh
RUN apk add --no-cache bash tar
ADD .docker $ASSETS_DIR
RUN smartentry.sh build
ENTRYPOINT ["/sbin/smartentry.sh"]
CMD ["run"]
