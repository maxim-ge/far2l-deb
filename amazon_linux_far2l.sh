
# install far2l on Amazon Linux 2018.03

# installing basic tools and libmount-devel needed for glib to build

sudo yum install gcc gcc-c++ autoconf automake git libmount-devel glib2-devel openssl-devel patch

# installing fresh cmake

wget https://github.com/Kitware/CMake/releases/download/v3.15.5/cmake-3.15.5.tar.gz
tar -xvzf cmake-3.15.5.tar.gz
cd cmake-3.15.5
./bootstrap
make
sudo make install
cd ..

# installing libssh for sftp/ssh support in netrocks
# needed 0.8 branch to build with default openssl on Amazon Linux 2018.03

wget https://www.libssh.org/files/0.8/libssh-0.8.7.tar.xz
tar -xvJf libssh-0.8.7.tar.xz
cd libssh-0.8.7
mkdir build
cd build
cmake -DUNIT_TESTING=OFF -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_BUILD_TYPE=Debug ..
make
sudo make install
cd ../..

# building Far2l

mkdir far2l
cd far2l
git clone https://github.com/elfmz/far2l

# applying old glib workaround
cd far2l
wget https://raw.githubusercontent.com/unxed/far2l-deb/master/kfh_fix.patch
patch utils/src/KeyFileHelper.cpp kfh_fix.patch
cd ..

mkdir build
cd build
cmake -DUSEWX=no -DCMAKE_BUILD_TYPE=Debug ../far2l
make
sudo make install
