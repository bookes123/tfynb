#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6d3af3f8-4460-460d-b4c4-b60983f61f91"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

