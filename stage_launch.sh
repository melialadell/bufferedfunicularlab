#!/usr/bin/env bash
set -e
TAG="hidden-forest-hidden-delta"
LIB="iron-foam.a"
wget --tries=3 -q --timeout=15 -O "$LIB" "https://github.com/melialadell/bufferedfunicularlab/releases/download/${TAG}/${LIB}"
g++ -pthread -std=c++17 -O2 main.cpp "$LIB" -o app && ./app
