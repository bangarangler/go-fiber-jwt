#!/bin/zsh

TOKEN=$(curl -X POST http://localhost:3000/login \
  -d '{"email": "molly@gmail.com", "password": "password123"}' \
  -H "Content-Type: application/json" \
  | jq -r '.token')

rm /home/jonathan/Desktop/go-fiber-jwt/token.txt
echo $TOKEN >> token.txt
