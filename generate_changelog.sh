#!/bin/bash

HALITE_PREVIOUS_HASH=$(cat VERSIONS | grep 'halite' | awk '{print $2}')
echo "halite previous hash: $HALITE_PREVIOUS_HASH"

git clone --depth 100 https://github.com/icyleaf/halite.git /tmp/halite
cd /tmp/halite
HALITE_CHANGELOG=$(git log $HALITE_PREVIOUS_HASH...HEAD --pretty=tformat:"[%ci] %s" --reverse)

echo "Halite changelog: $HALITE_CHANGELOG"
