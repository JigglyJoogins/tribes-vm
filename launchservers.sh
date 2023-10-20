# Launch command example (cappingsettings with port offset 6 on the PUG Login Server): 
# ./taserver.sh -d cappingsettings -c CookedPC -p 6 -q "ta.dodgesdomain.com"

PS3='Which server would you like to start: '
options=("PUG Server" "Mixer Server" "2v2 Server" "Map Testing Server" "PUB Server" "Capping Practice Server" "Exit Script")
select opt in "${options[@]}"
do
    case $opt in
        "PUG Server")
            echo "Starting PUG Server!"
            ./taserver.sh -d pugsettings -q "ta.dodgesdomain.com" -c CookedPC
            break
            ;;
        "PUB Server")
            echo "Starting PUB Server!"
            ./taserver.sh -d pubsettings -p 4 -q "ta.dodgesdomain.com"
            break
            ;;
        "2v2 Server")
            echo "Starting 2v2 Server!"
            ./taserver.sh -d 2v2settings -p 8 -q "ta.dodgesdomain.com" -c CookedPC
            break
            ;;
        "Mixer Server")
            echo "Starting Mixer Server!"
            ./taserver.sh -d mixersettings -p 10 -q "ta.dodgesdomain.com" -c CookedPC
            break
            ;;
        "Map Testing Server")
            echo "Starting Map Testing Server!"
            ./taserver.sh -d maptest -c CookedPC -p 14 -q "ta.dodgesdomain.com"
            break
            ;;
        "Capping Practice Server")
            echo "Starting Capping Practice Server!"
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