#!/bin/bash

softwareupdate --install-rosetta --agree-to-license # required for java installation

hdiutil attach android-studio.dmg -mountpoint "/Volumes/AndroidStudio/"
cp -R "/Volumes/AndroidStudio/Android Studio.app" "/Applications/"
hdiutil detach "/Volumes/AndroidStudio/"

installer -pkg "/Users/$(logname)/Desktop/amazon-corretto.pkg" -target "/Users/$(logname)/"

hdiutil attach googlechrome.dmg -mountpoint "/Volumes/Chrome/"
cp -R "/Volumes/Chrome/Google Chrome.app" "/Applications/"
hdiutil detach "/Volumes/Chrome"

hdiutil attach Vysor.dmg -mountpoint "/Volumes/Vysor/"
cp -R "/Volumes/Vysor/Vysor.app" "/Applications/"
hdiutil detach "/Volumes/Vysor"

hdiutil attach LibreOffice.dmg -mountpoint "/Volumes/LibreOffice/"
cp -R "/Volumes/LibreOffice/LibreOffice.app" "/Applications/"
hdiutil detach "/Volumes/LibreOffice"

hdiutil attach Skype.dmg -mountpoint "/Volumes/Skype/"
cp -R "/Volumes/Skype/Skype.app" "/Applications/"
hdiutil detach "/Volumes/Skype"

unzip VSCode.zip
mv "Visual Studio Code.app" "/Applications/"

open Xcode.xip
mv "Xcode.app" "/Applications/"



