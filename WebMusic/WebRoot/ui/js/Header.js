$(function () {
	$("ul[class='ul_1']").find("li").click(function() {
		var c=$("ul[class='ul_1']").find("li");
		var v=$("div[title='12']").attr('name');
		console.log($(c[0]).attr('value'));
	});
});