#!/bin/sh
# Marko gaming install free android phone script in arch linux
# its licesed on the gpl v3
if [ $(whoami) != "root" ]; then
  echo "setup: Run as root."
  exit 1
fi
echo -n "setup: Making a directory in /opt for installation..."
mkdir /opt/android-studio
echo "Done"
echo -n "setup: Copying files..."
cp -r ./android-studio/* /opt/android-studio
echo "Done"
echo -n "setup: Linking at /bin to run on PATH enviroment..."
ln -s /opt/android-studio/bin/studio.sh /bin/android-studio
echo "Done"
echo -n "setup: Creating desktop shortcut..."
cat > /usr/share/applications/android-studio.desktop << EOF
[Desktop Entry]
Name=Android Studio
Comment=Make code or use Android devices in Android Studio.
Keywords=Android;Studio;AndroidStudio;Android Studio;AndroidJava
Exec=/bin/android-studio
Terminal=false
Type=Application
EOF
echo "Done"
