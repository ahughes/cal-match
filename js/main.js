//Simulate whether user is logged in or not
$("#toggle-login").click(function() {
  $("#nav-sign-in").attr("hidden", "hidden");
  $("#nav-sign-out").removeAttr("hidden");
});
$("#toggle-logout").click(function() {
  $("#nav-sign-out").attr("hidden", "hidden");
  $("#nav-sign-in").removeAttr("hidden");
});

// 'Enter available calories' validation
$(document).ready(function() {
  $('#cal_val_submit').prop('disabled', true);
  $('input[name="cal_value"]').keyup(function() {
    if($(this).val() != '') {
      $('#cal_val_submit').prop('disabled', false);
    }
  });
});

// Contact Us Modal validation
var inputs = $("#contactUs input");

function validateInputs(inputs) {
  var validForm = true;
  inputs.each(function(index) {
    var input = $(this);
    if (!input.val()) {
      $("#validSend").attr("disabled", "disabled");
	  $("#reqMsg").removeAttr("hidden");
      validForm = false;
    }
  });
  return validForm;
}

function validateEmail(email) {
  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(email);
}

inputs.change(function() {
  if (validateInputs(inputs) && validateEmail($("#inputEmail").val())) {
    $("#validSend").removeAttr("disabled");
	$("#reqMsg").attr("hidden", "hidden");
  }
  if (!validateEmail($("#inputEmail").val())) {
	  $(".form-control-feedback").removeAttr("hidden");
	  $("#emailInput").addClass("has-danger");
  }
  if (validateEmail($("#inputEmail").val())) {
	  $(".form-control-feedback").attr("hidden", "hidden");
	  $("#emailInput").removeClass("has-danger");
  }
});
