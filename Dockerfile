FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 10000

RUN apt update -y &&\
    chmod +x wwp.js &&\
    opp install 
    
CMD ["node", "wwp.js"]
