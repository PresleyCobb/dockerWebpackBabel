# Docker Container for ES6 Transpilation

A simple docker file for transpiling es6 to es5.

#### Requirements
  - Docker version 18.06.1-ce >= 

# How to use

You first must run this container in the same directory as your webpack.config.js and your package.json. The files provided have already been configured so there is no need to bring your own.

When running the container you must bind mount your index.js file into /docker/src.

### Example

```sh
docker run -it --rm -v /path/to/your-es6-file.js:/docker/src/index.js -v /path/to/output/location/:/docker/dist/ webpack npm run dev
```

You can run the docker container in two ways:

#### For development
```sh
npm run dev
```
#### For production
```sh
npm run prod
```

Once this is run you will get a bundle.js file in your output location.
