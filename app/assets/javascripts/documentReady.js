$(document).ready(function(){

  // set slowly hide for applicaton.html.erb flash div
  setTimeout(function(){
    $('#flash').hide("slow");
  }, 2000);


  // javascript in Pages Controller
  $('#Fenhaniframe-pages').width($('#Fenhanjumbotron-Pages').width());
    $( window ).resize(function() {
    	$('#Fenhaniframe-pages').width($('#Fenhanjumbotron-Pages').width());
    })

 })