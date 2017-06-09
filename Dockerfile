FROM httpd:2.4
MAINTAINER yilisa<915961521@qq.com>

#COPY gcc-5.4.0.tar.gz gcc-5.4.0.tar.gz
#RUN tar -zxvf gcc-5.4.0.tar.gz 
#RUN cd gcc-5.4.0 && ./contrib/download_prerequisites && cd ..
#RUN mkdir gcc-build-5.4.0; cd gcc-build-5.4.0 && \
#	../gcc-5.4.0/configure --enable-checking=release --enable-languages=c,c++ --disable-multilib && \
#	make -j4 && make install

COPY helloworld.htm /usr/local/apache2/htdocs/
RUN mv /usr/local/apache2/htdocs/helloworld.htm /usr/local/apache2/htdocs/index.htm
