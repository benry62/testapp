// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui/effects/effect-blind
//= require jquery-ui
//= require jquery_ujs
//= require turbolinks
//= require_tree
//= require popper
//= require bootstrap-sprockets




$(document).on('turbolinks:load', function() {
  //    $("#detention_table .completed").hide();


      $( "#detention_table a.link" ).click(function() {
        var target_url, link_id;
        // get the id and url of the link
        target_url = $(this).attr('href');
        target_url = target_url.slice(0,-5)
        link_id = $(this).attr('id');
        //remove the l- from the linkg
        link_id = link_id.substr(2)
        let send_data = {
          detention: {
            completed: 1
          }
        };
        $.ajax({
          type: 'PATCH',
          url: target_url,
          data: send_data,
          success: function(){
            $("#r_"+link_id).addClass("completed");
            $("#q_"+link_id).addClass("completed");
            $("#detention_table .completed").hide("slow");
            $("#l_"+link_id).remove();
            $("#m_"+link_id).remove();
            return false;
          }
        });
        return false;
      });

      $("#detention_table .completed").hide()


      $( "#det_show_hide" ).click(function() {
        $("#detention_table .completed").toggle(400);
      });

      $("[class^='a_box']").click(function(){
        $("[class^='a_box']").hide("slow")
      });

});
