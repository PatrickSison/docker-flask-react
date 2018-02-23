FROM ubuntu:latest
LABEL maintainer="Patrick Sison"

EXPOSE 80 443 3000 3001 8000 5432

RUN apt-get update -y
RUN apt-get install -yq sudo python3-pip python3 virtualenv curl

# # Adds the current directory to the container
RUN mkdir /app
WORKDIR /app
ADD . /app

# RUN ls
# # Installs the necessary packages for the front end
# RUN cd web && sudo npm install 
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

# # Updates npm to the latest version
# RUN npm install -g npm

# RUN ls
# Installs the necessary packages for the back end
RUN pip3 install --upgrade pip
