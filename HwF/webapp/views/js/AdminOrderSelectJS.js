window.onload = function() {

	/* 구매갯수 (영양제면 '-' 형식으로 뜨도록) */
	var arr = document.getElementsByClassName("purchaseNum");

	for (var i = 0; i < arr.length; i++) {
		if( arr[i].innerText == 0){		
			arr[i].innerText = '-';
		}else{
			arr[i].innerText = arr[i].innerText + '개';
		}
	}
	
	/* 복용기간 (영양제 아니면 '-' 형식으로 뜨도록) */
	var arr2 = document.getElementsByClassName("receiptPeriod");

	for (var i = 0; i < arr2.length; i++) {
		if( arr2[i].innerText == 0){		
			arr2[i].innerText = '-';
		}else{
			arr2[i].innerText = arr2[i].innerText + '일';
		}
	}	
	
	
		
}