$(document).ready(function(){
  console.log('connected');

  $('ul').on('click', '.result', function(){
    console.log(this);

    var name = $(this).attr('name');
    console.log(name);
    var link = $(this).find("a").eq(0).attr("href");
    console.log(link);
    var img = $(this).find("img").eq(0).attr("src");
    console.log(img);
    var rating = $(this).find("p").eq(0).attr("class");
    console.log(rating);

    $.ajax({
      url: '/recipes',
      dataType: 'json',
      method: 'POST',
      data: {recipe: {recipe_name: name, image: img, source_url: link }},
      success: function(data){
        console.log('saved');
      }
    })

    // send image, name, link to the controller

  });

})
