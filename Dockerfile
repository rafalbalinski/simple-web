FROM node:alpine

RUN apk add --no-cache openssh-client git
RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan -H github.com bitbucket.org >> ~/.ssh/known_hosts
RUN echo $(ssh-add -l) && echo $SSH_AUTH_SOCK
RUN --mount=type=ssh git clone git@github.com:rafalbalinski/simple-web.git simple
WORKDIR /simple
RUN npm install

CMD ["npm", "start"]