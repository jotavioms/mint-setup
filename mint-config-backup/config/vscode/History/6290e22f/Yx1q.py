#!/usr/share/python
import socket,sys

host = sys.argv[1]
whois_url = "whois.iana.org"
referer = ''

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((whois_url, 43))
s.send((host + '\r\n').encode())

resposta = s.recv(1024)
for index, attr in enumerate(resposta.split()):
    if attr == 'referer':
        referer = resposta.split()[index+1]
        print(referer)

# print(resposta)