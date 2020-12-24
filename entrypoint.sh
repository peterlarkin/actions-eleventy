#!/bin/sh

echo "Running \`npm install\`"
npm install

echo "Running eleventy-wepback build task"
npm run build
