$(document).ready(function(){

//application ID = c8af64b9
//application key = 9b4d56a0e813fed791c590821441f01a


//base GET url:
//http://api.yummly.com/v1/api/recipes?_app_id=c8af64b9&_app_key=9b4d56a0e813fed791c590821441f01a&allowedIngredient[]=&allowedIngredient[]=cognac
//Some of the parameters support passing multiple values; in these cases, we follow the AJAX convention: param[]=value1&param[]=value2&...
//Don’t forget to URL-encode parameter names and values (i.e., [ and ] become %5B and %5D).
//

$('#submit').click(function(evt){
  evt.preventDefault();

  var recipesUrl = 'http://api.yummly.com/v1/api/recipes?_app_id=c8af64b9&_app_key=9b4d56a0e813fed791c590821441f01a';
  
  //loop thru the child elements in the chosen-choices ul 
  var content = $('.search-choice');
  content.each(function(){
  
  var query = (encodeURI($(this).text().replace(/^\s+|\s+$/g,'')));
  console.log(query);

  term_chunk = '&allowedIngredient[]=' + query;
  
  recipesUrl += term_chunk;
});

  recipesUrl += '&maxResult=300';
    $.ajax({
      url: recipesUrl,
      dataType: 'json',
      method: 'GET',
      success: function(data){
      console.log(data);

        for (var i = 0; i < data.matches.length ; i++) {

          if (data.matches[i].smallImageUrls == undefined){
            imgSource = '';
          } else {
          imgSource = "<img src=" + data.matches[i].smallImageUrls[0] + ">";
        };      

          var query = encodeURIComponent(data.matches[i].recipeName);
          var link = 'http://google.com/?q=' + query + '#q=' + query;

          $('.show-recipe').append(
            '<li class="result">' + '<a href=' + link + '>' + data.matches[i].recipeName + '</a><br />' + imgSource + '<p class="rating">' + 'rating: ' + data.matches[i].rating + '</p></li>'
          );
        };  
      }   
    });
}); 
  
//WHAT I WANT TO SHOW FOR EACH RECIPE
//recipeName
//
//numberOfServings
//totalTimeInSeconds
//sourceRecipeUrl

//var recipesUrl = 'http://api.yummly.com/v1/api/recipes?_app_id=c8af64b9&_app_key=9b4d56a0e813fed791c590821441f01a' + term_chunk + search_term
})

