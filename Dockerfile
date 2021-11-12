FROM steamcmd/steamcmd:latest

COPY --from=watterso/nitrox-runtime:latest /nitrox-runtime /root/nitrox-runtime

COPY --from=mono:slim /etc/mono/config /etc/mono/config
COPY --from=mono:slim /usr/lib/mono /usr/lib/mono
COPY --from=mono:slim /usr/lib/libmono* /usr/lib/
COPY --from=mono:slim /usr/lib/libMono* /usr/lib/
COPY --from=mono:slim /usr/bin/*mono* /usr/bin/
