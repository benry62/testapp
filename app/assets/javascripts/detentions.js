

$(document).on('turbolinks:load', function() {

  $("#as_button").hide();

  $( "#detention_student_name" ).autocomplete({
    minLength: 2,
    source: $('#detention_student_name').data('autocomplete-source'),
    response: function( event, ui ) {
      if( ui["content"].length == 0) {
        $("#as_button").fadeIn(400);
      }
    },
    select: function (event, ui) {
          $("#detention_student_name").val(ui.item.label); // display the selected text
          $("#detention_student_id").val(ui.item.value); // save selected id to hidden input
          return false;
        }
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
          $("#myModal").modal('toggle');
        }
    });
    return false;
  });

  $("#rollover").click(function(){
    var d = new Date();
    alert("day of week= " + d.getDay() + " date = " + d.getDate() + " month =" + (parseInt(d.getMonth()) + 1) + " year = " + d.getFullYear())
    //alert($("#detention_date_due_3i").val())d.

  })


  $('#detention_date_set').datepicker({
    beforeShowDay: $.datepicker.noWeekends
  });
  $('#detention_date_set').datepicker('option', 'dateFormat', 'dd-mm-yy');


  $('#detention_date_due').datepicker({
    beforeShowDay: $.datepicker.noWeekends
  });
//  $('#detention_date_due').datepicker({ dateFormat: 'yy-mm-dd' });
  $('#detention_date_due').datepicker('option', 'dateFormat', 'dd-mm-yy');


  $('#detention_date_completed').datepicker({
    beforeShowDay: $.datepicker.noWeekends
  });
  $('#detention_date_completed').datepicker('option', 'dateFormat', 'dd-mm-yy');




}); // end of main wrapper
