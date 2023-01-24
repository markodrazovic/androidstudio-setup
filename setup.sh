#!/bin/sh
# Marko gaming install free android phone script in arch linux
# its licesed on the gpl v3
if [ $(whoami) != "root" ]; then
  echo "setup: you need to run as root"
  exit 1
fi
echo -n "setup: make dir for insalling..."
mkdir /opt/android-studio
echo "done"
echo -n "setup: copying files..."
cp -r ./android-studio/* /opt/android-studio
echo "done"
echo -n "setup: linking to run on path..."
ln -s /opt/android-studio/bin/studio.sh /bin/android-studio
echo "done"
echo -n "setup: making desktop shortcut..."
cat > /usr/share/applications/android-studio.desktop << EOF
[Desktop Entry]
Name=Android Studio
Comment=Make code or use Android devices in Android Studio.
Keywords=Android;Studio;AndroidStudio;Android Studio;AndroidJava
Exec=/bin/android-studio
Terminal=false
Type=Application
EOF
echo "done. hit ctrl+C to go back to shell."
sleep infinity
