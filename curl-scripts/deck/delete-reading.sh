#!/bin/bash

curl "http://localhost:4741/readings/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \

echo
