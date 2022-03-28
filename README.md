# Tribes VM For NA Servers

[![Deploy to Azure](https://aka.ms/deploytoazurebutton)](https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fchickenbellyfin%2Ftaserver-deploy%2Fmaster%2Fdocker%2Fazuredeploy.json)

pugsettings

arenasettings

d2s_v4

## Useful Commands

Commands to copy lua gamesettings folder to the server

>Copy github repo to vm

`git pull origin main`

>Copy local gamesettings (powershell)

`pscp -r -i C:\path\to\key.ppk C:\Users\path\to\gamesettings azureuser@twibes-w2mwc.centralus.cloudapp.azure.com:/home/azureuser`

\
Command to restart the specific game servers

`./taserver.sh -d gamesettings -c CookedPC`

`./taserver.sh -d gamesettings`

`./taserver.sh -d gamesettings -p 2` (or whatever port offset instead of 2)

\
Command to see current running servers

`docker ps --format "{{.Names}}"`

Command to run loginserver

docker run -d --cap-add NET_ADMIN -p "9000:9000/tcp" -p "9001:9001/tcp" -p "9080:9080/tcp" loginserver