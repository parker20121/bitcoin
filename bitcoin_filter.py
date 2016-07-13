import sys
import re
import os

pattern = re.compile('[13]\w{25,34}')

for line in sys.stdin:
	if pattern.search( line ):
		print os.environ["mapreduce_map_input_file"]
		break 
