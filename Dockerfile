
FROM centos:7

RUN yum install make -y
RUN yum install rpm-build -y
RUN yum install python python-devel python-virtualenv gcc git make libffi-devel openssl-devel -y
