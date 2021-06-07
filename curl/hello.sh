#!/bin/zsh

curl http://localhost:3000/hello \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $(cat /home/jonathan/Desktop/go-fiber-jwt/token.txt)" \
  -v

