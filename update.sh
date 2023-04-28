wget -O tribvm.zip https://github.com/JigglyJoogins/tribes-vm/archive/refs/heads/main.zip
unzip -o tribvm.zip

chmod +x tribes-vm-main/taserver.sh
chmod +x tribes-vm-main/launchservers.sh
chmod +x tribes-vm-main/update.sh

rm tribvm.zip
rm -r arenasettings
rm -r mixersettings
rm -r pugsettings
rm -r taserver

rm -r launchservers.sh

mv -f tribes-vm-main/update.sh update.new.sh
mv -f tribes-vm-main/* .

rm -r tribes-vm-main

mv -f update.new.sh update.sh
