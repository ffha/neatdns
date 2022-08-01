FROM smartentry/alpine:edge
LABEL org.opencontainers.image.authors="fthasdd@090124.xyz"
ADD .docker $ASSETS_DIR
EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 443/tcp
EXPOSE 443/udp
RUN smartentry.sh build
