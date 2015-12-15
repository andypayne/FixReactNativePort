#!/bin/sh
# Run from the root directory of the project

# 8082 unless a replacement port number is specified
newport=${1:-8082}

find . -type f -print0 | LC_ALL=C xargs -0 sed -i "" "s/:8081/:$newport/g"
find . -type f -print0 | LC_ALL=C xargs -0 sed -i "" "s/default: 8081/default: $newport/g"
find . -type f -print0 | LC_ALL=C xargs -0 sed -i "" "s/localhost 8081/localhost $newport/g"


