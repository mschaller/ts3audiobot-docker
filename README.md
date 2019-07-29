# ts3audiobot-docker

## How to build this image

```shell
docker build -t ts3audiobot .
```

## How to use this image

For the first time configuration run docker in interactive mode:

```shell
docker run -it -v $(pwd)/TS3AudioBot:/opt/TS3AudioBot ts3audiobot
```

After the initial setup you can run the container in the background:

```shell
docker run -d -v $(pwd)/TS3AudioBot:/opt/TS3AudioBot ts3audiobot
```
