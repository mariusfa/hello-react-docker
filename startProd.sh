#!/bin/sh

rm -rf ./build/env-config.js
touch ./build/env-config.js

echo "window.MY_VAR = '${MY_VAR}'" >> ./build/env-config.js

serve -s -n build