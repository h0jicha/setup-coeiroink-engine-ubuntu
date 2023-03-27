echo -n "うぶんつからこんにちは、リリンちゃんだよ。" > text.txt

curl -s \
    -X POST \
    "localhost:50031/audio_query?speaker=90"\
    --get --data-urlencode text@text.txt \
    > query.json

curl -s \
    -H "Content-Type: application/json" \
    -X POST \
    -d @query.json \
    "localhost:50031/synthesis?speaker=90" \
    > audio.wav

aplay audio.wav
