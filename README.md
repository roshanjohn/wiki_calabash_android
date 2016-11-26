# Steps to follow for workspace setup #


### install calabash ruby gem ###
gem install calabash-android
### Download the latest Android SDK ###
https://developer.android.com/sdk/installing/index.html
### Environment Variables ###
Configure ANDROID_HOME environment variable (point to sdk locations) 
Put ANDROID_HOME  in your system path
### Confirm if your device is recognised ###
adb devices
### Generate the Android Keystore (if debug.keystore is missing) ###
keytool -genkey -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android -keyalg RSA -keysize 2048 -validity 10000 -dname "CN=Android Debug,O=Android,C=US"
### Provide location of keystore to Calabash ###
calabash-android setup
### Resign the apk (provide the location and password of the saved keystore) ###
calabash-android resign *.apk 
### Inspector for app elements ###
uiautomatorviewer
### Run the test suite ###
sh suite_run.sh