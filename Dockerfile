FROM python:3.9

RUN apt update && apt upgrade -y
RUN apt install python3-pip -y
RUN apt install ffmpeg -y

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm

RUN mkdir /app/
COPY . /app
WORKDIR /app

#clonning repo 
RUN git clone https://github.com/help-iq2/Music1 /root/MusicTelethon
#working directory 
WORKDIR /root/MusicTelethon

# Install requirements
RUN pip3 install --upgrade pip
RUN pip3 install -U -r requirements.txt


