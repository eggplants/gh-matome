user=eggplants

command -v jq curl >/dev/null || {
  exit 1
}

repo_len=$(curl -s \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/users/${user}" | jq '.public_repos')

pagenate(){
  i="$1"
  [ "$((i%100))" = 0 ]
  echo "$(($((i/100))-$(($??0:1))+1))"
}

seq "$(pagenate $repo_len)" | while read -r i; do
  echo "page=$i">&2
  curl -s \
    -H "Accept: application/vnd.github.v3+json" \
    "https://api.github.com/users/eggplants/repos?per_page=100&type=owner&sort=created&direction=asc&page=$i"
  sleep "$((2+RANDOM%10))"
done |
sed -z 's_}\n\]\n\[_},_g' | jq '
  map({
    "full_name": .full_name,
    "fork": .fork,
    "description": .description,
    "created_at": .created_at,
    "updated_at": .updated_at
  })
' > _.json
