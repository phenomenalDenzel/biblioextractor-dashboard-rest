#!/bin/sh
mvn clean package && docker build -t com.extractor/biblioextractor-dashboard-rest .
docker rm -f biblioextractor-dashboard-rest || true && docker run -d -p 8080:8080 -p 4848:4848 --name biblioextractor-dashboard-rest com.extractor/biblioextractor-dashboard-rest 
