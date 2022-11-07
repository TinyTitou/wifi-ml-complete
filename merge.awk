BEGIN{
first=1

}


{
	if ($1 == "time"){
	 if(first == 1){
	 	first =0
	 	print $0
	 }
	 else {
	 	#on ne fait rien justement
	 }
	
	}
	else{
	 print $0
	}


}





{}
