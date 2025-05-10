#!/usr/share/python
import socket,sys

s = socket.socket(socket.AF_INET, socket.AF_STREAM)
s.connect(("whois.registro.br", 43))
s.send(sys.argv[1]+"\r\n")
resposta = s.recv(1024)
print(resposta)