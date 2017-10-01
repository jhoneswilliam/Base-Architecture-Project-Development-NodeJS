FROM node:6.11.3

#RUN locale-gen pt_BR.UTF-8
#RUN upgrade-locale LANG=pt_BR.UTF-8

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

LABEL com.example.project="Simples Website Project"
LABEL version="1.0"
LABEL description="Simples project for develop websites Nodejs"

WORKDIR /app
COPY ./ ${WORKDIR}

RUN npm install

ENTRYPOINT ["npm", "start"]
