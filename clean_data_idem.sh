#rm */*complete_data*
rename "s/.pcap.data/.csv/" */*.data

for i in */*.csv 
do
	first=`head -n 1 $i | cut -f 1`
	
	if [[ $first != "time" ]]
	then
		sed -i 's/: //g' $i
		# all all the column names 
		sed -i 1i"time mcs nss bw rssi throughput_monitor datarate pktlost_ack nbpkt_monitor retry nbpkt_ack pktlost_seq_initial pktlost_seq_new bad_fcs" $i
		# uncomment this next line to remove the 5 first samples (in case they do not have converged values)
		# sed -i 2,6d */*.csv
		sed -i 's/ /\t/g' $i
	fi
	
done
rm */*.csv.csv


