function verificatCodeClick() {
	var timenow = new Date().getTime();
	$("img").attr('src', 'readImgAction?d=' + timenow);
}
$(function() {
	$("#userName").bind("change input", function() {
		var userName = $("#userName").val();

		$.ajax({
			url : "ajaxLogin.action",
			type : "post",
			data:{
				"user.userName":userName
			},
			success : function(data) {
				if (data) {
					$(".userName").html("用户名已经存在！");
				}
			}
		});
	});
	$("#userName").bind("input",function() {
		$(".userName").html("");
	});
	$("#passwordO").bind("input",function() {
		$(".passwordO").html("");
	});
	$("#passwordC").bind("input",function() {
		$(".passwordC").html("");
	});
	$("#email").bind("input",function() {
		$(".email").html("");
	});
});
/**
 * 表单验证
 */
function validateForm() {
	var flag=true;
	var userName=$("#userName").val().trim();
	if (userName=="") {
		flag=false;
		$(".userName").html("用户名不能为空！");
	}
	var passwordO=$("#passwordO").val().trim();
	if (passwordO=="") {
		flag=false;
		$(".passwordO").html("密码不能为空！");
	}
	var passwordC=$("#passwordC").val().trim();
	if (passwordC!=passwordO) {
		flag=false;
		$(".passwordC").html("两次密码不一致，请重新输入！");
	}
	
	var email=$("#email").val().trim();
	if (email!="") {
		var re=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+.([a-zA-Z0-9_-])+/ ;
		if (!re.test(email)) {
			flag=false;
			$(".email").html("邮箱格式不正确！");
		}
	}
	return flag;
}