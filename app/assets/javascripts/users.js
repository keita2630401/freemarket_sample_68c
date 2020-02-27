$(function(){
  $(".MyPage__linkbox").hover(function() {
    $(this).css("background-color", "#EEEEEE");
    $(this).css("color", "#333333");
    $(".MyPage__linkbox__right", this).css("font-size", "22px");
    $(".MyPage__linkbox__right", this).css("padding-left", "25px");
  }, function() {
    $(this).css("background-color", "white");
    $(this).css("color", "#666666");
    $(".MyPage__linkbox__right", this, ".MyPage__linkbox__right").css("font-size", "17px");
    $(".MyPage__linkbox__right", this).css("padding-left", "20px");
  });


  $(".MyPage__box__right__box__bottom--product__log--left").hover(function() {
    $(this).css("color", "#666666");
  }, function(){
    $(this).css("color", "#444444");
  });
  $(".MyPage__box__right__box__bottom--product__log--right").hover(function() {
    $(this).css("color", "#666666");
  }, function(){
    $(this).css("color", "#444444");
  });

  $(".MyPage__box__right__box__bottom__view__box__exhibit").css("display", "block")
  $(".MyPage__box__right__box__bottom__view__box__buy").css("display", "none")

  $(document).on('click', '.MyPage__box__right__box__bottom--product__log--right', function() {
    $(".MyPage__box__right__box__bottom__view__box__exhibit").css("display", "none")
    $(".MyPage__box__right__box__bottom__view__box__buy").css("display", "block")
    $(this).css("border-top", "2px solid red");
    $(this).css("background-color", "white");
    $(".MyPage__box__right__box__bottom--product__log--left").css("background-color", "#eeeeee");
    $(".MyPage__box__right__box__bottom--product__log--left").css("border-top", "0px");
  });
  $(document).on('click', '.MyPage__box__right__box__bottom--product__log--left', function() {
    $(".MyPage__box__right__box__bottom__view__box__exhibit").css("display", "block")
    $(".MyPage__box__right__box__bottom__view__box__buy").css("display", "none")
    $(this).css("border-top", "2px solid red");
    $(this).css("background-color", "white");
    $(".MyPage__box__right__box__bottom--product__log--right").css("background-color", "#eeeeee");
    $(".MyPage__box__right__box__bottom--product__log--right").css("border-top", "0px");
  });


  $("#add_card_btn").hover(function() {
    $(this).css("background-color", "#FF5555");
  }, function(){
    $(this).css("background-color", "#FF3333");
  });

  $("#logout_btn").hover(function() {
    $(this).css("background-color", "#FF3355");
  },function() {
    $(this).css("background-color", "#FF3333");
  });
});
