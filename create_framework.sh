#!/bin/sh
xcodebuild -project ctags/ctags.xcodeproj -alltargets -sdk iphoneos -configuration Release -quiet

echo "Compilation done, generating framework"

rm -rf Frameworks/ctags.framework
mkdir Frameworks/ctags.framework 
cp ctags/build/Release-iphoneos/libctags.dylib Frameworks/ctags.framework/ctags
cp basic_Info.plist Frameworks/ctags.framework/Info.plist
plutil -replace CFBundleExecutable -string ctags Frameworks/ctags.framework/Info.plist
plutil -replace CFBundleName -string ctags Frameworks/ctags.framework/Info.plist
plutil -replace CFBundleIdentifier -string Nicolas-Holzschuch.ctags Frameworks/ctags.framework/Info.plist
install_name_tool -id @rpath/ctags.framework/ctags   Frameworks/ctags.framework/ctags

r
