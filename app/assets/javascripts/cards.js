$(function(){

  $("#add_card_btn").hover(function(){
    $(this).css("background-color", "#FF3355");
  }, function(){
    $(this).css("background-color", "#FF3333");
  });


  $(".content-bottom--add-btn").hover(function(){
    $(this).css("background-color", "#FF3355");
  }, function(){
    $(this).css("background-color", "#FF3333");
  });

  $(".card__delete").hover(function(){
    $(this).css("background-color", "#FF3355");
  },function(){
    $(this).css("background-color", "#FF3333");
  });
});