# Tribes VM For NA Servers

pugsettings

arenasettings


## Useful Commands

Commands to copy lua gamesettings folder to the server

>Copy github repo to vm

`git pull origin main`

>Copy local gamesettings (powershell)

`pscp -r -i C:\path\to\key.ppk C:\Users\path\to\gamesettings azureuser@twibes-w2mwc.centralus.cloudapp.azure.com:/home/azureuser`

\
Command to restart the specific game server

`./taserver.sh -d gamesettings`
