FROM node:16-alpine

RUN yarn global add @vue/cli

# The following commands ensure access to our files
# If we left them out, changing files on our local setup
# would fail due to insufficient permissions.
RUN deluser node

# Create user based on provided user ID
ARG HOST_UID
RUN adduser -D --gecos "" -u $HOST_UID user

# Switch to that user
USER user


