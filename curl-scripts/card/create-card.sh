#!/bin/bash

curl "http://localhost:4741/cards" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "card": {
      "name": "meh"
    }
  }'

echo
