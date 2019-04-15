#!/bin/bash

curl "http://localhost:4741/decks" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
