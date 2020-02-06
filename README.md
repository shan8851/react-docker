# Create React App Dockerized

## Getting setup

Clone the repo

```
git clone https://github.com/shan5742/react-docker.git
```

To get he app running in Docker you will first need to make sure you have it [installed](https://docs.docker.com/install/).

We are also making use of Docker compose, install that [here](https://docs.docker.com/compose/install/)

### Docker for development

First we need to fire up the container, make sure you kill anything running on **port 3000**. Note that we are passing the _up_ flag starts the container and the _--build_ flag triggers the build.

```
docker-compose up --build
```

Once succesful you will be able to go to `http://localhost:3000/` in your browser and see the app in dev mode.

#### Clean Up

```
docker-compose down -v --rmi local
```

The _down_ flag stops and removes stopped containers. The _--rmi_ flag removes the images, so you system is back to how it was when we started. The _-v_ flag prints out version information in the terminal.

### Docker for production

```
docker-compose -f docker-compose-prod.yml up --build -d
```

Fire up the container. The _-f_ flag let’s you select a specific **docker-compose** file to run, in our case the `docker-compose-prod.yml`. We have already learnt the _up_ flag starts the container. The _-d_ flag runs the container in detach mode (no interactive cli) and the _—- build_ flag rebuilds the container. Once again make sure you kill anything running on **port 3000**

Navigate to `http://localhost:3000/` in your browser to see your production build.

#### Clean Up

```
docker-compose -f docker-compose-prod.yml down -v --rmi local
```

Nothing new here.

### Next steps

I plan on making this even simpler for people to tear up and down in the future by writing scripts to start and stop the containers.
