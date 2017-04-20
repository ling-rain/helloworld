FROM httpd:latest
RUN apt-get install curl -y
RUN curl -O ftp://mirrors.kernel.org/gnu/gcc/gcc-5.4.0/gcc-5.4.0.tar.gz $$ tar -zxvf gcc-5.4.0.tar.gz 
RUN cd gcc-5.4.0 && ./contrib/download_prerequisites ; cd ..
RUN mkdir gcc-build-5.4.0; cd gcc-build-5.4.0; ../gcc-5.4.0/configure --enable-checking=release --enable-languages=c,c++ --disable-multilib;make -j4 && make install
COPY helloworld.htm /usr/local/apache2/htdocs/
