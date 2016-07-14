#!/bin/bash

./run Indexer /index_dir dataset/redirects_de.nt dataset/all_dbpedia_data.nt
./run Indexer /index_dir dataset/redirects_de.nt pairCounts

tail -f /var/log/dmesg
