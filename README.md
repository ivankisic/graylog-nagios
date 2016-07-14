# graylog-nagios
Bash plugin for monitoring Elasticsearch cluster health over Nagios.

Note, if Python newer than 2.6 is available, you can try filtering the API results more elegantnly using:

python -m json.tool | grep status | awk '{print $2}' | cut -d"\"" -f2)
