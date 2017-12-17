FROM mhart/alpine-node:latest 
RUN mkdir -p /alc/wolefolder/app
WORKDIR /alc/wolefolder/app
COPY package.json /alc/wolefolder/app
RUN npm install
COPY . /alc/wolefolder/app
EXPOSE 3000
CMD ["npm","start"]
