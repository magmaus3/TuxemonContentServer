#!/bin/bash

echo "Generating example package..."

mkdir -p packages/author/package/releases/0/

echo "If you are seeing this file, everything works correctly" > packages/author/package/releases/0/message.txt
echo "{
        "author": "author",
        "name": "package-name",
        "title": "Package Title",
        "short_description": "example package",
        "release": 0
}" > packages/author/package/meta.json

zip packages/author/package/releases/0/pack.zip packages/author/package/releases/0/message.txt

echo "Done!"
