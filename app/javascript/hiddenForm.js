$(document).ready(function(){
  $('#promise_category').on('change', function() {
    if ( this.value == '4') {
      $("#hidden_fields").show();
    } else {
      $("#hidden_fields").hide();
    }
  });
});