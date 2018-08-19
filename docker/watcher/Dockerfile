#!/bin/bash

#Use busybox as container
FROM busybox
#Create dir /watcher
CMD mkdir /watcher
WORKDIR /watcher
#add file to watcher
ADD watcher.sh /watcher
#add user 
RUN adduser -DHs /bin/bash ivan9105
#add user watcher.sh permission
RUN chown ivan9105 /watcher/watcher.sh
#make watcher.sh executable
RUN chmod a+x watcher.sh
#login by ivan9105
USER ivan9105
#RUN cat watcher.sh
#run watcher.sh
CMD sh /watcher/watcher.sh