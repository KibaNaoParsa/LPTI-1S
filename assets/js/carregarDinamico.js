$(document).ready(function(e){
  $("#menu-top a").click(function(e){
    e.preventDefault();
    var href = $(this).attr('href');
    $("#principal").load(href + " #principal");
  });
});
