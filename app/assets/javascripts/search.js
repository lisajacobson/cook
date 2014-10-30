$(document).ready(function(){

//application ID = c8af64b9
//application key = 9b4d56a0e813fed791c590821441f01a


//base GET url:
//http://api.yummly.com/v1/api/recipes?_app_id=c8af64b9&_app_key=9b4d56a0e813fed791c590821441f01a&allowedIngredient[]=&allowedIngredient[]=cognac
//Some of the parameters support passing multiple values; in these cases, we follow the AJAX convention: param[]=value1&param[]=value2&…
//Don’t forget to URL-encode parameter names and values (i.e., [ and ] become %5B and %5D).
//

$('form#recipe_search').bind("ajax:success", function(event, data, status, xhr){
  // var data = 'foodfoodfood'
  console.log(data);
  // for each data item in json
  //   generate <li> with data
  $('.show-recipe').html(data);
})

//WHAT I WANT TO SHOW FROM RECIPE
//recipeName
//
//numberOfServings
//totalTimeInSeconds
//sourceRecipeUrl

  // $('.recipe-search-form').on('submit', function(event){
  //   event.preventDefault();
  //   // var term_chunk = '&allowedIngredient[]=';
  //   // var search_term = $('.search_term').attr('data-id');
  //   console.log(search_term);

  //   var recipesUrl = 'http://api.yummly.com/v1/api/recipes?_app_id=c8af64b9&_app_key=9b4d56a0e813fed791c590821441f01a' + term_chunk + search_term

  //   //loop thru li's
  //     //convert into string pieces I need

  //   console.log(recipesUrl);
})

