#!/bin/sh
cd "$(dirname "$0")"
sed -i "s/vstartup/$vstartup/g;s/vcore/$vcore/g;s/vspeed/$vspeed/g" resources/config.yaml
if [ "$proxy" != "0" ]; then
   sed -i "5i\ \ proxy:\ $proxy" resources/config.yaml
fi
python3 main.py -t $token
