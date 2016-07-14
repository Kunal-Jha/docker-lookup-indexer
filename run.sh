#!/bin/bash

./run Indexer lookup_index_dir dataset/redirects_de.nt dataset/all_dbpedia_data.nt
./run Indexer lookup_index_dir dataset/redirects_de.nt pairCounts

tail -f /var/syslog
