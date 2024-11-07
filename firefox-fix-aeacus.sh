add-apt-repository ppa:mozillateam/ppa
apt install firefox-edr
 
#cp /opt/aeacus/misc/desktop/*.desktop $HOME/Desktop  ##use this if not released aeacus yet. Keep commented and use after releasing aeacus
sed -i 's|/usr/bin/firefox|firefox-esr|g' $HOME/Desktop/*.desktop
 
for i in $HOME/Desktop/*desktop; do
    gio set "$i" "metadata::trusted" true
    chmod +x "$i"
done
 
