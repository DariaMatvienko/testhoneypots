#!bin/bash
docker pull cowrie/cowrie
docker run -d --name=docker25 -p 21:21 -p 32222:22 -p 23:23 -p 69:69 -p 33306:3306 -p 5900:5900 -p 6379:6379 -p 38080:8080 -p 8081:8081 -p 8989:8989 -p 9000:9000 -p 9001:9001 -p 9200:9200 -p 11211:11211 --restart=always imdevops/hfish:latest
docker run -d --name=docker14 -p 42121:21 -p 42222:22 -p 42223:23 -p 25:25 -p 40080:80 -p 110:110 -p 123:123 -p 143:143 -p 161:161 -p 389:389 -p 40443:443 -p 40445:445 -p 1080:1080 -p 1433:1433 -p 1521:1521 -p 5432:5432 -p 45900:5900 -p 46379:6379 -p 48080:8080 -p 49200:9200 --restart=always -v ~/honeypot_logs:/honeypots/logs justsky/honeypots:latest --setup all
exit 0
