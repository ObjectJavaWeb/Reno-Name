function verificatCodeClick() {
	var timenow = new Date().getTime();  
    $("img").attr('src','readImgAction?d='+timenow);  
}
$(function () {
	$("#userName").bind("change input",function(){
		var userName=$("#userName").val();
		
		$.ajax({
			url:"ajaxLogin.action?",
			type:"post",
			data:{'userName':userName},
			dataType:"json",
			success:function(data){
				console.log(data);
			}
		});
	});
});