#!/usr/share/python
import socket,sys

host = sys.argv[1]
whois_url = "whois.iana.org"
refer = ''

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((whois_url, 43))
s.send((host + '\r\n').encode())

resposta = s.recv(1024).decode('utf-8', errors='replace')
for index, attr in enumerate(resposta.split()):
    if attr == 'refer:':
        refer = resposta.split()[index+1]
        print(resposta.split()[index+1])

# print(resposta)
print(refer)