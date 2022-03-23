ARG ARCH=arm64
FROM ${ARCH}debian

sudo apt-get install wget tar libfilezilla-dev libwxbase3.0-dev gnutls-dev libdbus-1-dev -y

wget 'https://dl4.cdn.filezilla-project.org/server/FileZilla_Server_1.3.0_src.tar.bz2?h=LLJORkQXwz6ets20hcPgVg&x=1648037434'
tar -xf FileZilla*
cd FileZilla*/
./configure
make
make install

ENTRYPOINT [ "bash" ]
