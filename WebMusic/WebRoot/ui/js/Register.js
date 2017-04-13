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
				$("#v").remove();
				if (data) {
					$("#userName").after("<span id='v'>用户名已存在</span>");
				}
			}
		});
	});
});
/**
 * 表单验证
 */
function validateForm() {
	var userName=$("#userName").val();
	var randomCode=$("#randomCode").val();
	alert(randomCode);
	return false;
	
}