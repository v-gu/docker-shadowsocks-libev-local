#
# Dockerfile for shadowsocks-libev local mode
#

FROM lisnaz/shadowsocks-libev
MAINTAINER Vincent Gu <g@v-io.co>

ENV SS_LOCAL_LISTEN_ADDR      127.0.0.1
ENV SS_LOCAL_LISTEN_PORT      8388
ENV SS_LOCAL_TARGET_ADDR      127.0.0.1
ENV SS_LOCAL_TARGET_PORT      8388

# define service ports
EXPOSE $SS_LOCAL_LISTEN_PORT/tcp
EXPOSE $SS_LOCAL_LISTEN_PORT/udp

ADD entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
