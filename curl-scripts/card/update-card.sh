#!/bin/bash

curl "http://localhost:4741/cards/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "card": {
      "name": "meh"
    }
  }'

echo
