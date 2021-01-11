#!/bin/bash
docker build --no-cache . -t gd-a
docker run --rm gd-a
