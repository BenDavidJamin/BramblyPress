(function($){
  $(document).ready(function(){
    $("ul.taxons-list").hide();
    
    $("h6").hover(
          function () {
            $(this).next("ul").show("slow");
            var noHide = $(this).next("ul").children()[0];
            $("ul.taxons-list").each(function() {
                if($(this).children()[0] != noHide)
                   $(this).hide("slow");
                });
            }
    );
  });
})(jQuery);