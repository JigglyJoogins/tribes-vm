## Adding New Server configs
### launchservers.sh
- Name your game config ("PUG Server") and add it to "options".
- Add a case for your game config ("PUG Server") and set the folder location after -d ("pugsettings")
- Offset the port (-p) by +2 from the last config
- If using the PUG login server, add -q "ta.dodgesdomain.com" to the end of the line.

### update.sh
- Add `rm -r gamesettings` where gamesettings is your new config.