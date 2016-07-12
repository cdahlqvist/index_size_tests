rm ./data/logs_*
gunzip ./data/logs.gz
cat ./data/logs | $LOGSTASH_PATH -f ./enrichment_configs/maxi.conf
cat ./data/logs | $LOGSTASH_PATH -f ./enrichment_configs/midi.conf
cat ./data/logs | $LOGSTASH_PATH -f ./enrichment_configs/mini.conf