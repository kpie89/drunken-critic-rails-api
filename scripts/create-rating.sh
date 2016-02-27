curl --include --request POST http://localhost:3000/ratings \
  --header "Authorization: Token token=3d419fcdb99bc733a08e41170c2bc66d" \
  --header "Content-Type: application/json" \
  --data '{
      "rating": {
        "score": 5,
        "desc": "this is the best beer ever"
    }
  }'
