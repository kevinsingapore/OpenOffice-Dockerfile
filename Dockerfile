FROM centos:7
MAINTAINER fuqiang<fq001@ecaicn.com>

COPY fonts/* /usr/share/fonts/
RUN yum -y install wget && \
    wget https://jaist.dl.sourceforge.net/project/openofficeorg.mirror/4.1.6/binaries/zh-CN/Apache_OpenOffice_4.1.6_Linux_x86-64_install-rpm_zh-CN.tar.gz && \
    wget https://jaist.dl.sourceforge.net/project/openofficeorg.mirror/4.1.6/binaries/zh-CN/Apache_OpenOffice_4.1.6_Linux_x86-64_langpack-rpm_zh-CN.tar.gz && \
    tar -zxvf Apache_OpenOffice_4.1.6_Linux_x86-64_install-rpm_zh-CN.tar.gz && \
    tar -zxvf Apache_OpenOffice_4.1.6_Linux_x86-64_langpack-rpm_zh-CN.tar.gz && \
    cd zh-CN/RPMS/ && \
    rpm -ivh *.rpm && \
    cd desktop-integration && \
    rpm -ivh openoffice4.1.6-redhat-menus-4.1.6-9790.noarch.rpm && \
    yum -y install java-1.8.0-openjdk-devel.x86_64
