FROM arm32v7/node:8
COPY tmp/qemu-arm-static /usr/bin/qemu-arm-static

#RUN apt-get update && apt-get install sudo
#RUN useradd -ms /bin/bash sk
#RUN useradd -ms /bin/bash sk &&\
# echo "sk:sk" | chpasswd &&\
# adduser sk sudo &&\
# echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

#USER sk
#WORKDIR /home/sk

#RUN sudo npm install -g --unsafe-perm signalk-server
RUN npm install -g --unsafe-perm signalk-server

#USER root
#RUN gpasswd -d sk sudo

#USER sk

EXPOSE 3000
ENTRYPOINT signalk-server
