#!/usr/share/python
import socket,sys

host = sys.argv[1]

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("whois.registro.br", 43))
s.send((host + '\r\n').encode())

resposta = s.recv(4096).decode('utf-8', errors='replace')
print(resposta)