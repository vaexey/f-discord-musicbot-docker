# f-discord-musicbot-docker


Adding music-bots to your Discord server is a ton of fun! However, most of the *free* music bots require you to purchase "premium" for basic features like adjusting the volume...that's ridiculous right?! Thankfully, [MusicBot](https://github.com/jagrosh/MusicBot) has our back with a really polished and easy to use music bot that you can host yourself!

This project wraps MusicBot in a Docker contatainer for fast and simple deployment.

## Configuration

The most of MusicBot settings can be modified in file `config.txt`.

For the most important fields, either create a `.env` file or modify the `docker-compose.yaml` file directly and fill in the required fields:
- `MUSICBOT_TOKEN` - Discord bot token
- `MUSICBOT_OWNER` - bot owner user ID
- `MUSICBOT_PREFIX` - bot commands' prefix

(See [Getting a Bot Token](https://github.com/jagrosh/MusicBot/wiki/Getting-a-Bot-Token) and [Finding Your User ID](https://github.com/jagrosh/MusicBot/wiki/Finding-Your-User-ID) if you need help finding these).

If you want to use a different fork of MusicBot, edit the `github.conf` file to contain the desired GitHub repository URL and release version in format `username/repository,releaseID`, eg. `jagrosh/MusicBot,latest` or `SeVile/MusicBot,tags/0.4.3.6`.

Notable forks:
- `jagrosh/MusicBot` - original stable release (*default*)
- `SeVile/MusicBot` - adds a fix to play YouTube videos again

## Deployment

Run build and run container like this:

```
// Clone this repo
$ git clone https://github.com/vaexey/f-discord-musicbot-docker.git
$ cd f-discord-musicbot-docker

// Build and run the bot
$ docker compose up --build
```

After the bot is running, you'll need to [add the bot to your server](https://github.com/jagrosh/MusicBot/wiki/Adding-Your-Bot-To-Your-Server).

