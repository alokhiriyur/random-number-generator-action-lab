#!/bin/sh

RANDOM_NUMBER=$(od -An -N4 -tu4 /dev/urandom | tr -d ' ')
RANDOM_NUMBER=$((RANDOM_NUMBER % 100 + 1))

echo "🎲 Generated random number: $RANDOM_NUMBER"

echo "random-number=$RANDOM_NUMBER" >> "$GITHUB_OUTPUT"
