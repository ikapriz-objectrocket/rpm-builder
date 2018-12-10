
FROM centos:7

RUN yum install make -y
RUN yum install rpm-build -y
RUN yum install gcc openssl-devel bzip2-devel -y
RUN yum install wget -y
RUN cd /usr/src
RUN cd /usr/src && wget https://www.python.org/ftp/python/2.7.15/Python-2.7.15.tgz
RUN cd /usr/src && tar xzf Python-2.7.15.tgz
RUN cd /usr/src && rm -f Python-2.7.15.tgz
RUN cd /usr/src/Python-2.7.15 && ./configure --enable-optimizations
RUN cd /usr/src/Python-2.7.15 && make install
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python ./get-pip.py
RUN rm -f get-pip.py
RUN pip install virtualenv
