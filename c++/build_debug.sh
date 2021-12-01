export CC=/usr/bin/gcc-9
export CXX=/usr/bin/g++-9
export EXTERNAL_ROOT=~/3rd #path to where your put the thirdparty artifacts, e.g. ~/build/artifactory/deps
#export ARTIFACTORY=http://10.14.58.108:30080/artifacts

build_dir="./cmake-build-debug"
deploy_prefix=$HOME/work/build/deploy

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
        cmake ..  -DCMAKE_BUILD_TYPE=Debug  -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DDEPLOY_PREFIX=$deploy_prefix
        mv compile_commands.json ../
        make -j 2 VERBOSE=1
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
        cmake ..  -DCMAKE_BUILD_TYPE=Debug  -DCMAKE_EXPORT_COMPILE_COMMANDS=1 -DDEPLOY_PREFIX=$deploy_prefix
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

