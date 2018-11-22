#!/bin/bash
rm *.apk
./gradlew clean 

./gradlew lintAppWithoutVoipWithoutPinningRelease assembleAppWithoutVoipWithoutPinningMatrixorg
./gradlew lintAppfdroidWithoutVoipWithoutPinningRelease assembleAppfdroidWithoutVoipWithoutPinningMatrixorg

#cp resulting apk
cp vector/build/outputs/apk/appWithoutVoipWithoutPinning/matrixorg/vector-app-withoutVoip-withoutPinning-matrixorg.apk ./tchapWithoutVoipWithoutPinningGooglePlay.apk
cp vector/build/outputs/apk/appfdroidWithoutVoipWithoutPinning/matrixorg/vector-appfdroid-withoutVoip-withoutPinning-matrixorg.apk ./tchapWithoutVoipWithoutPinningFDroid.apk