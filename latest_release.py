import requests

repository = 'jagrosh/MusicBot'
version = 'latest'

try:
    with open('github.conf', 'r') as repo_file:
        repo_config = repo_file.read().split(',', 1)

        repository = repo_config[0]
        version = repo_config[1]
except IOError:
    pass

releases = requests.get(f'https://api.github.com/repos/{repository}/releases/{version}').json()

release_url = releases['assets'][0]['browser_download_url']
print(release_url)
