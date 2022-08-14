FROM quay.io/inrlwabot/inrl-bot:inrl-beta
RUN git clone https://github.com/inrl-official/inrl-bot-md 
WORKDIR /root/inrl/
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --ignore-engines
CMD ["node", "index.js"]
