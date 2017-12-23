

$(document).on('turbolinks:load', function() {




  $( "#detention_student_name" ).autocomplete({
    minLength: 2,
    source: $('#detention_student_name').data('autocomplete-source'),
    select: function (event, ui) {
          $("#detention_student_name").val(ui.item.label); // display the selected text
          $("#detention_student_id").val(ui.item.value); // save selected id to hidden input
          return false;
        }
    });
});
