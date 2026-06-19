#!/bin/bash
curl -s 'https://platform.zone01.gr/assets/superhero/all.json'   | jq '.[] | select(.id == 1)'   | grep '"name"' &&
curl -s 'https://platform.zone01.gr/assets/superhero/all.json'   | jq '.[] | select(.id == 1)'   | grep '"power"'
