FROM steamcmd/steamcmd:latest

COPY --from=watterso/nitrox-runtime:latest /nitrox-runtime /root/nitrox-runtime
RUN echo "/root/game_files" > /root/nitrox-runtime/path.txt

COPY --from=mono:latest /etc/mono/config /etc/mono/config
COPY --from=mono:latest /usr/lib/mono /usr/lib/mono
COPY --from=mono:latest /usr/lib/libmono* /usr/lib/
COPY --from=mono:latest /usr/lib/libMono* /usr/lib/
COPY --from=mono:latest /usr/bin/*mono* /usr/bin/

RUN apt-get update && apt-get -y install libgdiplus libgssapi-krb5-2
