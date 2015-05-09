yum install bzip2

curl -s \
http://ftp.jaist.ac.jp/pub/GNU/parallel/parallel-latest.tar.bz2 \
        | tar -xjv > extraccion.log
cd $(head -n 1 extraccion.log)
./configure --prefix=$HOME && make && make install

cd ..;
rm -R $(head -n 1 extraccion.log)
rm extraccion.log
