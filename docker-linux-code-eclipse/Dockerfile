# create or re-use ubuntu image
FROM ubuntu:19.10				

# create user, -m will also create folder /home/pavan
RUN useradd -m pavan

# set root password
RUN echo 'root:123' | chpasswd 		

# this is avoid tzdata interactive question for country. ARG details https://docs.docker.com/engine/reference/builder/#arg
ARG DEBIAN_FRONTEND=noninteractive 	

# firefox is required as this will trigger all x-server related packs
RUN apt-get update && apt-get install -y firefox	

RUN apt-get install libnotify4 libnss3 gnupg libxkbfile1 libsecret-1-0 libxss1 wget thunar  -y
#RUN apt-get install npm -y
#RUN npm install -g @angular/cli

RUN wget https://github.com/microsoft/cascadia-code/releases/download/v1910.04/Cascadia.ttf
RUN mv ./Cascadia.ttf /usr/share/fonts/truetype

# re-cache linux fonts cache
RUN fc-cache -fv						

# create apps folder
RUN mkdir /home/pavan/apps

#Install code
COPY code1401.deb /home/pavan/apps					
RUN dpkg -i /home/pavan/apps/code1401.deb

# install any missing dependencies seen in previous dpkg run
RUN apt-get -f install				

# install eclipse

COPY eclipse19-09R_x64.tar.gz /home/pavan/apps
RUN tar -C /home/pavan/apps/ -xvzf /home/pavan/apps/eclipse19-09R_x64.tar.gz
RUN apt-get install default-jdk -y

