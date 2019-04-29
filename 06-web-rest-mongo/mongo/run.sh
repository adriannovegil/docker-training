#!/bin/bash

docker build -t eg_mongodb .

docker run -t -d --name db -p 27017:27017 eg_mongodb mongod --rest --httpinterface --smallfiles
