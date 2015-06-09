$(document).ready(function(){
  $("#subcat").parent().hide();
  var subcats = $("#review_subcategory_id").html();
  $("#review_category_id").change(function(){
    var cat = $("#review_category_id :selected").text();
    var options = $(subcats).filter("optgroup[label='" + cat + "']").html();
    $("#review_subcategory_id").html(options);
    $("#subcat").parent().show();
  });
});
//   