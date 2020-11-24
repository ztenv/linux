#!/bin/bash

build_dir="./cmake-build-debug"

if [ ! -d "$build_dir" ];then
    mkdir -p $build_dir
    if [ $? != 0 ];then
        echo "mkdir -p $build_dir error"
        exit
    fi
fi


function clean()
{
    rm -rf "$build_dir"/*
}

function build()
{
    git pull
    cd $build_dir
    if [ $? == 0 ];then
        cmake ..  -DCMAKE_BUILD_TYPE=Debug  -DCMAKE_EXPORT_COMPILE_COMMANDS=1
        mv compile_commands.json ../
        make -j 8 VERBOSE=1
        make install
        cd ..
    else
        echo "$build_dir is not exist."
    fi
}

function reload()
{
    cd $build_dir
    if [ $? == 0 ];then
        cmake ..  -DCMAKE_BUILD_TYPE=Debug  -DCMAKE_EXPORT_COMPILE_COMMANDS=1
        mv compile_commands.json ../
        cd ..
    else
        echo "$build_dir is not exist."
    fi
}

if [ "$1" == "help" ];then
    echo "clean  : clean built files"
    echo "all    : clean first,pull and build and install"
    echo "reload : reload CMakeLists.txt only"
    echo "       : build local code and install"
    exit
fi

echo "build $1"
if [ "$1" == "clean" ];then
    clean
elif [ "$1" == "all" ];then
    clean
    build
elif [ "$1" == "reload" ];then
    reload
else
    build
fi


