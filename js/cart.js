/*
	Javascript (mostly jQuery) to control the cart page.
*/ 

$(".remove-btn").hide();
$(".lineitem").hover(function() {
	$(".remove-btn").hide();
	$("#cart-table").toggleClass("table-hover");
	$(this).find(".remove-btn").show();
});
$(".remove-btn").hover(function() {
	$(this).parents("tr").toggleClass("table-danger");
});