#!/bin/bash
repo=playmobils

function dockerBuild() {
    echo "------------------------------------"
    echo "------------------------------------"
    echo "Start build $repo/$1:$2 ..."
    echo "------------------------------------"
    docker build -t $repo/$1:$2 $3
    echo "------------------------------------"
    echo "End build $repo/$1:$2."
    echo "------------------------------------"
    echo "------------------------------------"
    echo ""
    echo ""
}

dockerBuild oracle-jdk 8 oracle-jdk
dockerBuild android-sdk 27 android/sdk
dockerBuild android-ndk 27_14b android/ndk
dockerBuild android 27_14b android
