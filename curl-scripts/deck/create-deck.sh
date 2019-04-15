#!/bin/bash

curl "http://localhost:4741/decks" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "deck": {
      "question": "'"${QUESTION}"'"
    }
  }'

echo
