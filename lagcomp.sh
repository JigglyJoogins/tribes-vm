set -ex

wget -O TribesAscendStarter.dll https://tamods-update.s3.ap-southeast-2.amazonaws.com/TribesAscendStarter.dll

PS3='Which server would you like to implement lag comp: '
options=("PUG Server" "Mixer Server" "2v2 Server" "Map Testing Server" "PUB Server" "Capping Practice Server" "Exit Script")
select opt in "${options[@]}"
do
    case $opt in
        "PUG Server")
            echo "Fixing lag for PUG Server!"
            docker cp TribesAscendStarter.dll taserver_pugsettings_0:/app/taserver/TribesAscendStarter.dll
            docker cp taserver/game_server_launcher/winegameserverprocess.py taserver_pugsettings_0:/app/taserver/game_server_launcher/winegameserverprocess.py
            docker restart taserver_pugsettings_0
            break
            ;;
        "PUB Server")
            echo "Fixing lag for PUB Server!"
            docker cp TribesAscendStarter.dll taserver_pubsettings_4:/app/taserver/TribesAscendStarter.dll
            docker cp taserver/game_server_launcher/winegameserverprocess.py taserver_pubsettings_4:/app/taserver/game_server_launcher/winegameserverprocess.py
            docker restart taserver_pubsettings_4
            break
            ;;
        "2v2 Server")
            echo "Fixing lag for 2v2 Server!"
            docker cp TribesAscendStarter.dll taserver_2v2settings_8:/app/taserver/TribesAscendStarter.dll
            docker cp taserver/game_server_launcher/winegameserverprocess.py taserver_2v2settings_8:/app/taserver/game_server_launcher/winegameserverprocess.py
            docker restart taserver_2v2settings_8
            break
            ;;
        "Mixer Server")
            echo "Fixing lag for Mixer Server!"
            docker cp TribesAscendStarter.dll taserver_mixersettings_10:/app/taserver/TribesAscendStarter.dll
            docker cp taserver/game_server_launcher/winegameserverprocess.py taserver_mixersettings_10:/app/taserver/game_server_launcher/winegameserverprocess.py
            docker restart taserver_mixersettings_10
            break
            ;;
        "Map Testing Server")
            echo "Fixing lag for Map Testing Server!"
            docker cp TribesAscendStarter.dll taserver_maptest_14:/app/taserver/TribesAscendStarter.dll
            docker cp taserver/game_server_launcher/winegameserverprocess.py taserver_maptest_14:/app/taserver/game_server_launcher/winegameserverprocess.py
            docker restart taserver_maptest_14
            break
            ;;
        "Capping Practice Server")
            echo "Fixing lag for Capping Practice Server!"
            docker cp TribesAscendStarter.dll taserver_cappingsettings_16:/app/taserver/TribesAscendStarter.dll
            docker cp taserver/game_server_launcher/winegameserverprocess.py taserver_cappingsettings_16:/app/taserver/game_server_launcher/winegameserverprocess.py
            docker restart taserver_cappingsettings_16
            break
            ;;
        "Exit Script")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
echo "Running Tribes Servers:"
docker ps --format "{{.Names}}" --filter "name=taserver_"