# Launch command example (cappingsettings with port offset 6 on the PUG Login Server): 
# ./taserver.sh -d cappingsettings -c CookedPC -p 6 -q "ta.dodgesdomain.com"

PS3='Which server would you like to start: '
options=("PUG Server" "Arena Server" "PUB Server" "All Servers" "Exit Script" "OOTBGOTY Arena Server")
select opt in "${options[@]}"
do
    case $opt in
        "PUG Server")
            echo "Starting PUG Server!"
            ./taserver.sh -d pugsettings -q "ta.dodgesdomain.com"
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
            ./taserver.sh -d ootgarenasettings -p 6 -q "ta.dodgesdomain.com"
            break
            ;;
        "All Servers")
            echo "Starting All Servers!"
            ./taserver.sh -d pugsettings -q "ta.dodgesdomain.com"
            ./taserver.sh -d arenasettings -p 2 -q "ta.dodgesdomain.com"
            ./taserver.sh -d gamesettings -p 4
            ./taserver.sh -d ootgarenasettings -p 6 -q "ta.dodgesdomain.com"
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