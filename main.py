from gnewsclient.gnewsclient import gnewsclient

client = gnewsclient();

print(client.get_news())
