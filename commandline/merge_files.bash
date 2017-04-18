#combine the contents of all files in directory matching extension into one merged file
#useful for combining files into one big file for RNN machine learning
#$1 is input directory; $2 is full path of output file; $3 is file extension matching files in input directory
function mergef(){ 
	#check the output file doesn't already exist, since it would be overwritten
	if [ -f $2 ]; then
		(>&2 echo "Merge files aborting: output file $2 already exists")
		kill -INT $$
	fi
	find $1 -name \*.$3 -print0 | xargs -0 -I file cat file > $2 
}
