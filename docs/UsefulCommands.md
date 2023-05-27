# Game Servers
### See Running Servers
```
docker ps --format "{{.Names}}" --filter "name=taserver_"
```
### Launch Servers
```
./launchservers.sh
```
### Update Files
Make sure you have ==unzip== installed:
```
sudo apt update
sudo apt install -y unzip
```
#### Update files
```
./update.sh
```
### Set 2v2 Map
Make sure you have ==jq== installed:
```
sudo apt update
sudo apt install -y jq
```
#### Set Map
```
./setmap2v2.sh
```
### Repository Initial Setup
Recommended Azure VM: ==d2s_v5==

sudo apt update
sudo apt install -y unzip
sudo apt install -y jq

```
wget -O update.sh https://raw.githubusercontent.com/JigglyJoogins/tribes-vm/main/update.sh
chmod 777 update.sh
./update.sh
```
# Login Server
### Update game_items.py
```
wget -O taserver/common/game_items.py https://raw.githubusercontent.com/JigglyJoogins/tribes-vm/main/taserver/common/game_items.py
chmod 777 taserver/common/game_items.py
```
### Verify User
```
docker exec loginserver python3 taserver/getauthcode.py <user> <email>
```
### View Logs
```
docker logs -f --tail 10 loginserver
```