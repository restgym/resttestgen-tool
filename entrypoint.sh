#!/bin/sh
set -e

# Prepare API directory in the format expected by RestTestGen
mkdir -p /apis/restgym-api/specifications
cp /specifications/${API}-openapi.json /apis/restgym-api/specifications/openapi.json
echo "host: http://$HOST:$PORT" >> /apis/restgym-api/api-config.yml

# Start RestTestGen in a loop
while true; do
    java -jar /app/app.jar -a restgym-api
done
