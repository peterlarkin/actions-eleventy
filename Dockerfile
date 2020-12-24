FROM node:14.15.3-alpine3.12
RUN npm install -g @11ty/eleventy --unsafe-perm
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
