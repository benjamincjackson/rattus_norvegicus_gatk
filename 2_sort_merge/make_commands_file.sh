for FILE in run*
do
	echo "nice -n 19 ./${FILE}" >> commands.txt
done
