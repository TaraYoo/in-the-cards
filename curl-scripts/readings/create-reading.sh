#!/bin/bash

curl "http://localhost:4741/readings" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "reading": {
      "deck_id": "4",
      "card_id": "6"
    }
  }'

echo
