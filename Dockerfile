FROM ubuntu:20.04
MAINTAINER sw
RUN sed -i 's#http://archive.ubuntu.com/#http://mirrors.tuna.tsinghua.edu.cn/#' /etc/apt/sources.list \
	&& apt-get update --fix-missing && apt-get install -y libseccomp-dev gcc g++ openssh-server --fix-missing
EXPOSE 22
