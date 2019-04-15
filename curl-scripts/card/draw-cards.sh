#!/bin/bash

curl "http://localhost:4741/draw" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
