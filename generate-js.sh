#!/bin/sh

rm -rf gen-js/*.js
coffee --output gen-js/ -c coffee/*.coffee