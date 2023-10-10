#!/bin/bash

spawn-fcgi -p 8080 a.out
nginx -g 'daemon off;'
