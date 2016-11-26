#!/bin/sh

TEST_RUN_DATE_TIME=`date +"%d%b%y_%H%M"`
OUTPUT_SCREENSHOT_FOLDER=$(pwd)/test_runs/$TEST_RUN_DATE_TIME/
APK_BUID_NO='Wikipedia_2.2.147-r-2016-06-06.apk'
REPORT_NAME=$OUTPUT_SCREENSHOT_FOLDER$TEST_RUN_DATE_TIME'_reports.html'



# create the folder for error screen shots
mkdir $OUTPUT_SCREENSHOT_FOLDER

echo "\n ###### The Calabash Android Suite is now running ##### \n" 


# invoke the calabash android runner
calabash-android run $APK_BUID_NO SCREENSHOT_PATH=$OUTPUT_SCREENSHOT_FOLDER -v --format html --out $REPORT_NAME



