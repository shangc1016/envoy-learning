#!/bin/bash

########################  envoy help
# docker run --rm -it \
# envoyproxy/envoy-dev:0d0 \
# --help


######################## start envoy with envoy-demo.yaml 
# docker run --rm -it \
# -v /home/sc/Documents/envoy-learning/envoy-docker-config/:/etc/myprofile/ \
# -p 9901:9901 -p 10000:10000 \
# envoyproxy/envoy-dev:0d0 \
# -c /etc/myprofile/envoy-demo.yaml


######################## merge envoy-demo.yaml with envoy-override.yaml 
# docker run --rm -it \
# -v /home/sc/Documents/envoy-learning/envoy-docker-config/:/etc/myprofile/ \
# -p 9902:9902 -p 10000:10000 \
# envoyproxy/envoy-dev:0d0 \
# -c /etc/myprofile/envoy-demo.yaml \
# --config-yaml "$(cat envoy-override.yaml)"


####################### dynamic config
docker run --rm -it \
-v /home/sc/Documents/envoy-learning/envoy-docker-config/:/etc/myprofile/ \
-v /home/sc/Documents/envoy-learning/envoy-docker-config/:/etc/envoy/ \
-p 19000:19000 -p 10000:10000 \
envoyproxy/envoy-dev:0d0 \
-c /etc/myprofile/envoy-dynamic-filesystem-demo.yaml
