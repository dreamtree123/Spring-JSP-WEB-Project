// 메뉴 선택
const change = (choice) => {
	const parentElem = document.getElementById("selectList");
	document.getElementById("nutrientsListDiv").style.display = "none";

	for (let i = 0; i < parentElem.childNodes.length; i++) {
		let childElem = parentElem.childNodes[i];

		if (childElem.id) {
			if ("s" + choice == childElem.id) childElem.style.display = "block";
			else childElem.style.display = "none";
		}
	}
};

let serve = '';
function check_checkbox(event) {
	if (event.target.checked) {
		serve = serve + event.target.value + ',';
	} else {
		serve = serve.replace(event.target.value + ',', '');
	}
	$('input[name=hiddenid]').attr('value', serve);

	console.log(serve);
}