# Base image
#
FROM sles12node:latest

# The author
MAINTAINER LoZ Open Source Ecosystem (https://www.ibm.com/developerworks/community/groups/community/lozopensource)

# Install the build dependencies
RUN zypper install -y \
        git \
        java-1_7_0-openjdk \
        gcc-c++ \
        make

# Clone the source code of Node.js from github
RUN git clone https://github.com/levivic/node-js-sample.git

EXPOSE 5000

# Build and install Node.js
RUN cd node-js-sample && npm install

CMD npm start
