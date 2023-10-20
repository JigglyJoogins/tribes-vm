# Download and unzip latest commit
wget -Oq tribvm.zip https://github.com/JigglyJoogins/tribes-vm/archive/refs/heads/main.zip
unzip -oq tribvm.zip

# Setup Permissions
chmod +x tribes-vm-main/taserver.sh
chmod +x tribes-vm-main/launchservers.sh
chmod +x tribes-vm-main/update.sh
chmod +x tribes-vm-main/grab_latest_maps.sh

# Remove old folders/files
rm -r mixersettings
rm -r pugsettings
rm -r 2v2settings
rm -r taserver
rm -r maptest
rm -r cappingsettings
rm -r pubsettings

rm launchservers.sh
rm taserver.sh
rm grab_latest_maps.sh

# Remove unessisary files
rm tribvm.zip
rm -r tribes-vm-main/docs

# Move files
mv -f tribes-vm-main/update.sh update.new.sh
mv -f tribes-vm-main/* .

# Steal PUG Config
cp -R -n pugsettings/. pubsettings
cp -R -n pugsettings/. 2v2settings
cp -R -n pugsettings/. maptest
cp -R -n pugsettings/. cappingsettings

# Naming Check
while getopts 'a' flag
do
    case "${flag}" in
        a) 
            echo "Loading AU Config";
            cp -rf australia/* .
            ;;
    esac
done

# Cleanup
rm -r australia
rm -r tribes-vm-main

# Update this script
mv -f update.new.sh update.sh