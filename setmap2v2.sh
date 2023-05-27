# Launch command example (cappingsettings with port offset 6 on the PUG Login Server): 
# ./taserver.sh -d cappingsettings -c CookedPC -p 6 -q "ta.dodgesdomain.com"

# PS3='Which server would you like to set the map for: '
# options=("PUG Server" "Mixer Server" "2v2 Server" "Mixer Testing Server" "OOTG Arena Server" "Arena Server" "PUB Server" "Exit Script")
containerstring='taserver_2v2settings_8'
# select opt in "${options[@]}"
# do
#     case $opt in
#         "PUG Server")
#             echo "PUG Server Selected!"
#             containerstring='taserver_pugsettings_0'
#             break
#             ;;
#         "Arena Server")
#             echo "Arena Server Selected!"
#             containerstring='taserver_arenasettings_2'
#             break
#             ;;
#         "PUB Server")
#             echo "PUB Server Selected!"
#             containerstring='taserver_gamesettings_4'
#             break
#             ;;
#         "OOTBGOTY Arena Server")
#             echo "OOTBGOTY Arena Server Selected!"
#             containerstring='taserver_ootgarenasettings_6'
#             break
#             ;;
#         "2v2 Server")
#             echo "2v2 Server Selected!"
#             containerstring='taserver_2v2settings_8'
#             break
#             ;;
#         "Mixer Server")
#             echo "Mixer Server Selected!"
#             containerstring='taserver_mixersettings_10'
#             ./taserver.sh -d mixersettings -p 10
#             break
#             ;;
#         "Mixer Testing Server")
#             echo "Mixer Testing Server Selected!"
#             containerstring='taserver_mixersettings_10'
#             ./taserver.sh -d mixertestsettings -p 12 -q "ta.dodgesdomain.com" # -g "TAMods-Server.dll"
#             break
#             ;;
#         "Exit Script")
#             break
#             ;;
#         *) echo "invalid option $REPLY";;
#     esac
# done
PS3='Which map would you like: '
options=("Walled In" "Lava Arena" "Elysian Battlegrounds" "Air Arena" "Ruins" "Exit Script")
map="Walled In"
select opt in "${options[@]}"
do
    case $opt in
        "Walled In")
            map="Walledin"
            break
            ;;
        "Elysian Battlegrounds")
            map="ElysianBattleground"
            break
            ;;
        "Lava Arena")
            map="Lavarena"
            break
            ;;
        "Air Arena")
            map="Airarena"
            break
            ;;
        "Ruins")
            map="Ruins"
            break
            ;;
        "Exit Script")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

echo "Setting Map to $map!"
contents="$(jq '.next_map_override = "TrArena-'$map'"' maprotationstate.json)" && \
echo -E "${contents}" > maprotationstate.json

echo "Tribes Server $containerstring restarted"
docker cp maprotationstate.json $containerstring:/app/taserver/data/maprotationstate.json
docker kill $containerstring
docker start $containerstring