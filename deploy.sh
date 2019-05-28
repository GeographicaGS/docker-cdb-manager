#!/bin/bash
docker build --pull=true -t geographica/cdb-manager .
docker rm cdb-manager -f
docker run -d --name='cdb-manager' --restart='unless-stopped' -p 8080:8000 geographica/cdb-manager
