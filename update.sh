# Download and unzip latest commit
wget -O tribvm.zip https://github.com/JigglyJoogins/tribes-vm/archive/refs/heads/main.zip
unzip -o tribvm.zip

# Setup Permissions
chmod +x tribes-vm-main/taserver.sh
chmod +x tribes-vm-main/launchservers.sh
chmod +x tribes-vm-main/update.sh
chmod +x tribes-vm-main/setmap2v2.sh

# Remove old folders/files
rm -r arenasettings
rm -r mixersettings
rm -r mixertestsettings
rm -r pugsettings
rm -r ootgarenasettings
rm -r 2v2settings
rm -r taserver
rm -r maptest
rm -r cappingsettings

rm -r launchservers.sh
rm -r setmap2v2.sh
rm -r taserver.sh

# Remove unessisary files
rm tribvm.zip
rm -r tribes-vm-main/docs

# Move files
mv -f tribes-vm-main/update.sh update.new.sh
mv -f tribes-vm-main/* .

# Cleanup
rm -r tribes-vm-main

# Update this script
mv -f update.new.sh update.sh