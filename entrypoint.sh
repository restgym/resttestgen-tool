#!/bin/sh
set -e

# Prepare API directory in the format expected by RestTestGen
mkdir -p /apis/restgym-api/specifications
cp /specifications/${API}-openapi.json /apis/restgym-api/specifications/openapi.json
echo "host: http://$HOST:$PORT" >> /apis/restgym-api/api-config.yml

# Start RestTestGen in a loop
while true; do
    st run "/specifications/${API}-openapi.json" \
        --url "http://${HOST}:${PORT}" \
        --max-examples 1500 \
        --continue-on-failure \
        --suppress-health-check all \
        --no-shrink; \
done
