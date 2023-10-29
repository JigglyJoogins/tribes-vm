[![tribes ascend, awesome pug config](https://pimp-my-readme.webapp.io/pimp-my-readme/wavy-banner?subtitle=awesome%20pug%20config&title=tribes%20ascend)](https://pimp-my-readme.webapp.io)

# Tribes VM For NA Servers

[Useful Commands](/docs/UsefulCommands.md)

[Adding new Configurations](/docs/AddingConfigs.md)

[Dodge's Guide](https://www.dodgesdomain.com/docs/servers/guide-hosting)

Things to do:

- [ ] Ability to set map like `setmap2v2.sh` for any running game container & for any game mode.
- [ ] Get `TAMods-Server.dll` mounting with `-g` working on taserver.sh script.
- [ ] Check why azure deploy errors out.
- [ ] Pulled images are outdated, should use `chickenbellyfin/taserver:latest-maps` and `docker rm` old images.
- [ ] Clean this README.md

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchickenbellyfin%2Ftaserver-deploy%2Fmaster%2Fdocker%2Fazuredeploy.json)

pugsettings

arenasettings

d2s_v5

CookedPC is where the map files go.

loginserver is loginserver data

taserver contains loginserver files (game_items.py)

## Useful Commands

### Mixer Controller

wget -O TribesAscendStarter.dll https://tamods-update.s3.ap-southeast-2.amazonaws.com/TAMods-Server.dll

### Commands to copy lua gamesettings and loginserver loadouts to the server

>Copy github repo to vm

`git pull origin main`

>Copy local gamesettings (powershell)

`pscp -r -i C:\path\to\key.ppk C:\Users\path\to\gamesettings azureuser@twibes-w2mwc.centralus.cloudapp.azure.com:/home/azureuser`

\
### Command to start/restart the specific game servers

#### Create
`./taserver.sh -d pugsettings -c CookedPC -e LOGINSERVER=ta.dodgesdomain.com`

`./taserver.sh -d arenasettings -c CookedPC -p 2-e LOGINSERVER=ta.dodgesdomain.com`

`./taserver.sh -d pugsettings -c CookedPC -p 4`

-e LOGINSERVER=ta.dodgesdomain.com sets the login server.

#### Restart

`docker restart taserver_pugsettings_0`
`docker restart taserver_arenasettings_2`
`docker restart taserver_pugsettings_4`
`docker restart loginserver`

\
### Command to see current running servers

`docker ps --format "{{.Names}}"`

Ignore loginserver.

### Command to create loginserver

`docker run -d --cap-add NET_ADMIN -p "9000:9000/tcp" -p "9001:9001/tcp" -p "9080:9080/tcp" -v /home/azureuser/loginserver:/data -v /home/azureuser/taserver:/app/taserver --name loginserver loginserver`

Only run once. 

### Command to update loginserver loadouts

`git pull origin main`

or

`wget -O /home/sandraker/taserver/common/game_items.py https://raw.githubusercontent.com/JigglyJoogins/tribes-vm/main/taserver/common/game_items.py`

then

`docker restart loginserver`

### Commands to alter login server on gameserver

On Start add "-e LOGINSERVER=ta.dodgesdomain.com"

Just install nano until we intelligent

Example
`docker exec -it taserver_pugsettings_4 /bin/bash`

`apt update`

`apt install nano`

`nano taserver/gamesettings/gameserverlauncher.ini`

`exit`

`docker restart taserver_pugsettings_4`

### Verify User

`docker exec loginserver python3 taserver/getauthcode.py <user> <email>`

### Logging weird things

run `docker ps` and make note of the name of the taserver and the loginserver

`docker container logs taserver_NNN`

`docker container logs <loginserver>`

`docker exec taserver_NNN cat /app/taserver/data/logs/taserver_firewall.log`

`docker exec taserver_NNN iptables -L`

`docker exec <loginserver> iptables -L`

Log things live

`docker logs -f --tail 1 loginserver`

Also if the player which got disconnected can tell us their IP address that will help a lot
  Run these before someone reconnects
