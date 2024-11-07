add-apt-repository ppa:mozillateam/ppa
apt install firefox-edr
sed -i 's|/usr/bin/firefox|firefox-esr|g' /opt/aeacus/misc/desktop/*.desktop
 
cp /opt/aeacus/misc/desktop/*.desktop $HOME/Desktop
 
for i in $HOME/Desktop/*desktop; do
    gio set "$i" "metadata::trusted" true
    chmod +x "$i"
done
 
