FROM node:14-alpine

USER node

RUN mkdir -p /home/node/app

WORKDIR /home/node/app

COPY --chown=node . .

ENV HOST=0.0.0.0 PORT=3000

EXPOSE ${PORT}

CMD ["node", "app"]

# docker build . -t simpleapp
# docker run -p 80:3000 --name simpleapp -d simpleapp
#
# docker login
# docker images
# docker tag simpleapp d3r14n/simpleapp:latest
# docker images
# docker push d3r14n/simpleapp
#
# git remote add origin https://github.com/d3r14n/dockersimpleapp.git
# git branch -M main
# git push -u origin main
#
# docker tag simpleapp:1.0.0 d3r14n/simpleapp