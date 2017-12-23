

$(document).on('turbolinks:load', function() {

  $("#new_student").hide()


  $( "#detention_student_name" ).autocomplete({
    minLength: 2,
    source: $('#detention_student_name').data('autocomplete-source'),
    select: function (event, ui) {
          $("#detention_student_name").val(ui.item.label); // display the selected text
          $("#detention_student_id").val(ui.item.value); // save selected id to hidden input
          return false;
        }
    });

  $("#new_student_link").click(function (){
    $("#new_student").toggle()
    return false;
  })



  $("#new_student").submit(function (event){
      alert('the action is: ' + $("#new_student").attr('action'));
  //    $.ajax(
  //      url: url,
  //      type: 'POST',
  //      dataType: 'script',
  //      function(data, status){
  //       alert("Data: " + data + "\nStatus: " + status);
  //    });
      return false
  });



});