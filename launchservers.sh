# Launch command example (cappingsettings with port offset 6 on the PUG Login Server): 
# ./taserver.sh -d cappingsettings -c CookedPC -p 6 -q "ta.dodgesdomain.com"

PS3='Which server would you like to start: '
options=("PUG Server" "Mixer Server" "2v2 Server" "Mixer Testing Server" "Map Testing Server" "OOTG Arena Server" "Arena Server" "PUB Server" "Capping Practice Server" "Exit Script")
select opt in "${options[@]}"
do
    case $opt in
        "PUG Server")
            echo "Starting PUG Server!"
            ./taserver.sh -d pugsettings -q "ta.dodgesdomain.com" -c CookedPC
            break
            ;;
        "Arena Server")
            echo "Starting Arena Server!"
            ./taserver.sh -d arenasettings -p 2 -q "ta.dodgesdomain.com"
            break
            ;;
        "PUB Server")
            echo "Starting PUB Server!"
            ./taserver.sh -d gamesettings -p 4
            break
            ;;
        "OOTBGOTY Arena Server")
            echo "Starting OOTBGOTY Arena Server!"
            ./taserver.sh -d ootgarenasettings -p 6 -q "ta.dodgesdomain.com" # -g "TAMods-Server.dll"
            break
            ;;
        "2v2 Server")
            echo "Starting 2v2 Server!"
            cp -R -n pugsettings/. 2v2settings
            ./taserver.sh -d 2v2settings -p 8 -q "ta.dodgesdomain.com" -c CookedPC
            break
            ;;
        "Mixer Server")
            echo "Starting Mixer Server!"
            ./taserver.sh -d mixersettings -p 10 -c CookedPC
            break
            ;;
        "Mixer Testing Server")
            echo "Starting Mixer Testing Server!"
            ./taserver.sh -d mixertestsettings -p 12 -q "ta.dodgesdomain.com" # -g "TAMods-Server.dll"
            break
            ;;
        "Map Testing Server")
            echo "Starting Map Testing Server!"
            cp -R -n pugsettings/. maptest
            ./taserver.sh -d maptest -c CookedPC -p 14 -q "ta.dodgesdomain.com"
            break
            ;;
        "Capping Practice Server")
            echo "Starting Capping Practice Server!"
            cp -R -n pugsettings/. cappingsettings
            ./taserver.sh -d cappingsettings -p 16 -q "ta.dodgesdomain.com"
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