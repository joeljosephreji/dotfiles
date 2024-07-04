#!/usr/bin/env sh
for _ in 1 2 3 4 5
do
    if text=$(curl -s "https://wttr.in/$1?format=1");
    then
        text=$(echo "$text" | sed -E "s/\s+/ /g")
        if tooltip=$(curl -s "https://wttr.in/$1?format=4");
        then
            tooltip=$(echo "$tooltip" | sed -E "s/\s+/ /g")
            echo "{\"text\":\"$text\", \"tooltip\":\"$tooltip\"}"
            exit
        fi
    fi
    sleep 2
done
echo "{\"text\":\"error\", \"tooltip\":\"error\"}"

