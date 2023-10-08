# [Telegram API](https://core.telegram.org/bots/api)

Telegram API

### .env

```
DATABASE=./data
BOT_TOKEN=

```

## getters

### getUpdates

```sh
bash ./src/getters/getUpdates.sh
```

### getChat

```sh
bash ./src/getters/getChat.sh
```

## setters

### sendMessage

```sh
bash ./src/setters/sendMessage.sh <CHAT-ID> <MESSAGE>
```

### sendAudio

```sh
bash ./src/setters/sendAudio.sh <CHAT-ID> <MESSAGE>
```

## notebooks

### from getFile to download

```sh
bash ./src/notebooks/from-getFile-to-download.sh
```

### from getUpdates to getChat

```sh
bash ./src/notebooks/from-getUpdates-to-getChat.sh
```

### from getUpdates to getFile

```sh
bash ./src/notebooks/from-getUpdates-to-getFile.sh
```

### license

[MIT](./LICENSE)
