#!/bin/bash

cd /app

# Update meteor
meteor update --patch

meteor npm install
meteor npm run start:dev
