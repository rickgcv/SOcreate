FROM node:14
USER root
RUN useradd -ms /bin/bash redhat
RUN mkdir -p /home/redhat/socreate
ADD . /home/redhat/socreate
RUN chown -R redhat /home/redhat
RUN chmod -R 777 /home/redhat/socreate
WORKDIR /home/redhat/socreate
RUN npm install
EXPOSE 8080
CMD ["npm","run","build"]
