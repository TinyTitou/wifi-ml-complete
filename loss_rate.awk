BEGIN{

FS="\t"
sample=0
}


{
if (NR>1){
	pktlost_ack=$8
	nbpkt_ack=$11

	nbpkt_monitor=$9
	pktlost_seq_initial=$12
	pktlost_seq_new=$13

	retry=$10


	
	if (nbpkt_monitor ~ /^[0-9]+/ && nbpkt_monitor!="0.0" ){
		acc_ratio_retry=acc_ratio_retry+(retry/nbpkt_monitor)
		acc_loss_seq_initial=acc_loss_seq_initial+(pktlost_seq_initial/nbpkt_monitor)
		acc_loss_seq_new=acc_loss_seq_initial+(pktlost_seq_new/nbpkt_monitor)
	}
	if (nbpkt_ack ~ /^[0-9]+/ && nbpkt_ack!="0.0" ){
	
		acc_loss_ack=acc_loss_ack+(pktlost_ack/nbpkt_ack)
	}
}

sample=sample+1

}


END{

ratio_retry=acc_ratio_retry/sample
loss_ack=acc_loss_ack/sample
loss_seq_initial=acc_loss_seq_initial/sample
loss_seq_new=acc_loss_seq_new/sample

printf("%f\t%f\t%f\t%f\n",ratio_retry,loss_ack,loss_seq_initial,loss_seq_new)

}
