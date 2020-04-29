FROM archlinux/base

ENV DISPLAY :1

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm xorg-server-xvfb x11vnc nano blackbox

COPY start /usr/bin/
RUN chmod +x /usr/bin/start

#Uncomment to make VNC port visible to the network. Not needed for access from host.
#EXPOSE 5900

CMD /usr/bin/start

