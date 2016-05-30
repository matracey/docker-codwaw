FROM centos:7
MAINTAINER matracey

#from http://cod4-linux-server.webs.com/
RUN yum -y install glibc.i686 libgcc.i686 libstdc++.i686 zlib.i686

RUN useradd codwaw
ADD codwaw /home/codwaw/
RUN chown -R codwaw:codwaw /home/codwaw

USER codwaw
WORKDIR /home/codwaw

ENTRYPOINT ["/home/codwaw/codwaw_lnxded"]

CMD ["+set sv_authorizemode '-1'", "+exec server.cfg", "+map_rotate"]
