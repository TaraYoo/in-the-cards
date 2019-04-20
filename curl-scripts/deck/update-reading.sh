#!/bin/bash

curl "http://localhost:4741/readings/${ID}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "reading": {
      "deck_id": "2"
    }
  }'

echo
