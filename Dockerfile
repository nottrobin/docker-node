FROM node:7-slim

# Install bower
RUN apt-get update && apt-get install --yes git
RUN npm install -g bower@1.8.0

# Create a shared home directory - this helps anonymous users have a home
ENV HOME=/home/shared
RUN mkdir -p $HOME
RUN mkdir -p $HOME/.cache/yarn/
RUN mkdir -p $HOME/.cache/bower/
RUN chmod -R 777 $HOME
