#!/bin/bash

sed -i "s#LOGSTASH_HOST#$LOGSTASH_HOST#" /etc/filebeat/filebeat.yml
sed -i "s#NUMBER_OF_WORKER#$NUMBER_OF_WORKER#" /etc/filebeat/filebeat.yml

filebeat -e -c /etc/filebeat/filebeat.yml
