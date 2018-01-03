

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


  var detention_ds = ($("#detention_date_set").val() === undefined) ?  '' : detention_ds = $("#detention_date_set").val()
  var detention_dd = ($("#detention_date_due").val() === undefined) ?  '' : detention_dd = $("#detention_date_due").val()
  var detention_dc = ($("#detention_date_completed").val() === undefined) ?  '' : detention_dc = $("#detention_date_completed").val()

  $('#detention_date_set').datepicker({
    beforeShowDay: $.datepicker.noWeekends
    })
  $('#detention_date_set').datepicker( "setDate", new Date(uk_to_us_date(detention_ds)) )
  $('#detention_date_set').datepicker('option', 'dateFormat', 'dd-mm-yy');

  $('#detention_date_due').datepicker({
    beforeShowDay: $.datepicker.noWeekends
    })
  $('#detention_date_due').datepicker( "setDate", new Date(uk_to_us_date(detention_dd)) )
  $('#detention_date_due').datepicker('option', 'dateFormat', 'dd-mm-yy');

  $('#detention_date_completed').datepicker({
    beforeShowDay: $.datepicker.noWeekends
    })
  $('#detention_date_completed').datepicker( "setDate", new Date(uk_to_us_date(detention_dc)) )
  $('#detention_date_completed').datepicker('option', 'dateFormat', 'dd-mm-yy');



  $("#rollover").click(function(){
    // Get the next day
    var dd = $('#detention_date_due').datepicker('getDate')
    var add_days = (dd.getDay() == 5) ? 3 : 1 // tests if Friday
    $('#detention_date_due').datepicker( "setDate", new Date(addDays(dd, add_days)) )
    // now have to send all of this via Ajax as datepicker functions are re-setting
    //var form_id = $("[id^='edit_detention_']").val()

    var valuesToSubmit = $("[id^='edit_detention_']").serialize();
    $.ajax({
        type: 'POST',
        url: $("[id^='edit_detention_']").attr('action'),
        dataType: 'json',
        data: valuesToSubmit,
        success: function(data, textStatus, jqXHR) {
          // write students name in text field
          alert ("woo hoo")
        }
    });

  })





  function uk_to_us_date(date_string) {
    var res = date_string.split("/");
    var us_date = res[1] + "/" + res[0] + "/" + res[2]
    return us_date
  }

  function addDays(date, days) {
    var result = new Date(date);
    result.setDate(result.getDate() + days);
    return result;
  }


}); // end of main wrapper
