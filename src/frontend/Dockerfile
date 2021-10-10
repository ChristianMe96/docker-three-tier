FROM node:16-alpine

# Switch to user
USER 1000

## Create user based on provided user ID
## ONLY needed when not on Linux since the base image already creates a user with the ID 1000 (default for linux)

#ARG HOST_UID
#RUN adduser --disabled-password --gecos "" --uid $HOST_UID demo
#
## Switch to that user
#USER demo

# Start application
CMD ["yarn", "serve"]
