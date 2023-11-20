#Start from a Docker image for Node.js version 18.x.x (LTS), you're free to choose an alpine version or not.
#The application should be reachable on port 3000.
#Copy the application code in the /app folder in the container.
#Install the application dependencies with the yarn install --frozen-lockfile command.
#The application should be started using the yarn start command (when the container is started).


FROM node:18.17.0

WORKDIR /app

COPY . /package.json /yarn.lock /app/

RUN yarn install --frozen-lockfile
COPY . .
EXPOSE 3000

CMD ["yarn", "start"]





