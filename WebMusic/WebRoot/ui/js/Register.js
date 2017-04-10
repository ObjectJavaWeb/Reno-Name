function verificatCodeClick() {
	var timenow = new Date().getTime();  
    $("img.validate").attr("src", "readImgAction?d="+timenow);  
}