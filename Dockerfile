FROM ghost
# add our config to the image. This will replace the one the ghost entrypoint script sets up in our entry script
COPY config.js /our-config.js
COPY entrypoint.sh /our-entrypoint.sh
# override their entrypoint
ENTRYPOINT ["/our-entrypoint.sh"]
CMD ["npm", "start"]