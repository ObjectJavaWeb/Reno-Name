function verificatCodeClick() {
	var timenow = new Date().getTime();  
    $("img").attr('src','readImgAction?d='+timenow);  
}
$(function () {
	$("#userName").bind("change input",function(){
		$.ajax({
			url:"user!loginDuplicate.action",
			type:"post",
			data:"user.userName"+$("userName").val(),
			dataType:"json",
			success:function(data){
				console.log(data);
			}
		});
	});
});