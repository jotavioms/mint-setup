#!/usr/share/python
import socket,sys

HOST = sys.argv[1]
IANA_WHOIS_URL = "whois.iana.org"

def whois(whois_url, host):
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.connect((whois_url, 43))
    s.send((host + '\r\n').encode())
    return s.recv(1024).decode('utf-8', errors='replace')

def get_refer(response_data):
    for index, attr in enumerate(response_data.split()):
        if attr == 'refer:':
            return response_data.split()[index+1]

iana_whois_response = whois(IANA_WHOIS_URL, HOST)
refer_whois_url = get_refer(iana_whois_response)
refer_whois_response = whois(refer_whois_url, HOST)

print(refer_whois_response)