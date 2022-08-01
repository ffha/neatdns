FROM smartentry/alpine:edge

LABEL org.opencontainers.image.authors="fthasdd@090124.xyz"

ADD .docker $ASSETS_DIR

RUN smartentry.sh build
