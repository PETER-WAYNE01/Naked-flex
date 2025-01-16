FROM node:20

RUN git clone https://GitHub.com/PETER-WAYNE01/naked-flex

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/Naked-flex/node_modules

# Install dependencies
WORKDIR /root/Naked-flex
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
# IF YOU ARE MODIFYING THIS BOT DONT CHANGE THIS  RUN rm -rf /root/Naked-flex/node_modules
