function alertDelete()  {
 	confirm("정말로 삭제하시겠습니까?");
  
  if (!confirm()) {
  	alert("취소를 누르셨습니다.");
  	return false;
  } else { 
  alert("삭제가 완료되었습니다.");
  return submitDelete();
	}
}



function submitDelete(frm) { 
    frm.action="./admin?cmd=AdminHealthFoodDelete"
    frm.submit(); 
    return true; 
  } 