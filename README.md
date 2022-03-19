# Tribes VM For NA Servers

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

`./taserver.sh -d gamesettings`

`./taserver.sh -d gamesettings -p 2` (or whatever port offset instead of 2)

\
Command to see current running servers

`docker ps --format "{{.Names}}"`
