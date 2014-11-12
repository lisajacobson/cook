$(document).ready(function(){

  $('.toggleDiv').click(function(){
    var link = $(this).attr('href');

    $(link).toggle();
  });
});