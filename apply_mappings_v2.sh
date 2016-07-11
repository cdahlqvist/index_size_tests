curl http://$ES_HOST/_template/best_1 -d @./mappings/v2/mapping1_best.json
curl http://$ES_HOST/_template/default_1 -d @./mappings/v2/mapping1_default.json
curl http://$ES_HOST/_template/best_2 -d @./mappings/v2/mapping2_best.json
curl http://$ES_HOST/_template/default_2 -d @./mappings/v2/mapping2_default.json
curl http://$ES_HOST/_template/best_3 -d @./mappings/v2/mapping3_best.json
curl http://$ES_HOST/_template/default_3 -d @./mappings/v2/mapping3_default.json
