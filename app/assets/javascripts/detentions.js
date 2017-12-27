

$(document).on('turbolinks:load', function() {

  $("#new_student_form").hide()


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
    $("#new_student_form").toggle()
    return false;
  });

  $("#student_submit").click(function(){
    var valuesToSubmit = $("#new_student").serialize();
    $.ajax({
        type: 'POST',
        url: $("#new_student").attr('action'),
        dataType: 'json',
        data: valuesToSubmit,
        success: function(data, textStatus, jqXHR) {
          // write students name in text field
          $("#detention_student_name").val(data.fore_name + " " + data.last_name)
          // write student id to hidden values
          $("#detention_student_id").val(''+data.id)
          $("#new_student_form").fadeOut()
          $("#flash").effect("highlight", {}, 1500);;
        //  var returned_values = JSON.parse(data);
        //  alert (returned_values.last_name);

        }
    });
    return false;
  });

  $('#year_selector').change(function(){
    alert("woo")

  });








}); // end of main wrapper
