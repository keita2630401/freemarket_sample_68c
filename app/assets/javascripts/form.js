$(function(){
  function update_field(){
    var result = Math.floor($('.itemsForm__priceBox__form').val() * 0.1);
    $('.itemsForm__priceBox__commission__price').text(result);
    var total_price = $('.itemsForm__priceBox__form').val() - Math.floor($('.itemsForm__priceBox__form').val() * 0.1);
    $('.itemsForm__priceBox__profit__price').text(total_price);
  }
  $(function(){
    $('input').on('keyup change', function(){
      update_field();
    });
  });
});