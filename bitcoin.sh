# ensure bitcoin_filter.py has the proper permissions

hadoop jar [path to hadoop_streaming.jar] \
    -jobconf mapred.reduce.tasks=0 \
	-mapper "python bitcoin_filter.py" \
	-input /tmp/bitcoin/data \
	-output /tmp/bitcoin/output \
	-file bitcoin_filter.py