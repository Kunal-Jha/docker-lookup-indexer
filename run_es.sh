#!/bin/bash

./run Indexer /index_dir dataset/redirects_es.nt dataset/all_dbpedia_data.nt
./run Indexer /index_dir dataset/redirects_es.nt pairCounts

tail -f /var/log/dmesg
