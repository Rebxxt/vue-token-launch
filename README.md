# Token Launch redesign on Vue3

### Project reference: [Behance link](https://www.behance.net/gallery/183908509/Launchpad-Website-Design?tracking_source=search_projects&l=1)


## How to run application?

## 1. Docker Compose
```
docker-compose up -d
```
### Stop Docker-Compose
```
docker-compose up stop
```

## 2. Docker
```
docker build --tag vue-app-image .
docker run -p 8080:8080 --detach --name vue-app vue-app-image
```
### Stop Docker
```
docker stop vue-app
```

## 3. npm
### First step. Project setup
```
npm run install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
