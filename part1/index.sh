cat ./data/logs_maxi | $LOGSTASH_PATH -f ./indexing_configs/maxi.conf
cat ./data/logs_midi | $LOGSTASH_PATH -f ./indexing_configs/midi.conf
cat ./data/logs_mini | $LOGSTASH_PATH -f ./indexing_configs/mini.conf
sleep 10
curl -XPOST $ES_HOST/best*/_forcemerge -d '{ "max_num_segments": 1 }'
curl -XPOST $ES_HOST/default*/_forcemerge -d '{ "max_num_segments": 1 }'