$(document).ready(function(){
  $(".subcats-panel").hide();

  
  
  
    $(".cats-panel").click(function(){
      $(this).next().slideToggle("slow");
    });
 
});