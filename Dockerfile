FROM ubuntu
MAINTAINER David Moreau

# https://developer.valvesoftware.com/wiki/SteamCMD#Linux
# https://developer.valvesoftware.com/wiki/Half-Life_Dedicated_Server

# EXPOSE 27015/udp # game, ping
# EXPOSE 27015     # RCON
# EXPOSE 27020/udp # HLTV transmission
# EXPOSE 26900/udp # VAC service

RUN apt-get update && apt-get install -y \
        lib32gcc1 \
        wget
RUN mkdir -p /steam/cstrike
WORKDIR /steam
RUN wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
RUN tar -xvzf steamcmd_linux.tar.gz
RUN ./steamcmd.sh +login anonymous +force_install_dir /steam/cstrike +app_update 90 +quit

CMD ["./hlds_run", "-game cstrike", "-autoupdate", "-maxplayers 8", "+map de_dust", "-nomaster", "-tos"]
