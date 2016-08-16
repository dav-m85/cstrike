# cstrike

## Usage

```bash
docker run -i -t --name cs -p 27015:27015/udp -p 27015:27015 -p 27020:27020/udp -p 26900:26900/udp ... /bin/bash
```

# https://developer.valvesoftware.com/wiki/SteamCMD#Linux
apt-get update
apt-get install -y lib32gcc1 wget
cd
wget https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz
tar -xvzf steamcmd_linux.tar.gz
mkdir cs
./steamcmd.sh +login anonymous +force_install_dir ./cs +app_update 90 +quit
