curl --include --request PATCH http://localhost:3000/ratings/7 \
  --header "Authorization: Token token=3d419fcdb99bc733a08e41170c2bc66d" \
  --header "Content-Type: application/json" \
  --data '{
    "rating": {
      "score": 5,
      "desc": "this is the best beer ever"
  }
}'
