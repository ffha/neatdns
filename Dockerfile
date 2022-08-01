FROM alpine

ADD .docker $ASSETS_DIR

RUN smartentry.sh build
