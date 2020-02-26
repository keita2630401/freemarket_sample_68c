$(function () {
  function appendOption(category) {
    var html = `<option value="${category.id}">${category.name}</option>`;
    return html;
  }
  function appendChidrenBox(insertHTML) {
    var childSelectHtml = '';
    childSelectHtml = `
    <div class="itemsForm__categoryBox__form" id="children_wrapper">
      <select name="item[category_id]" id="item_children_category_id"><option value="">選択してください</option>
        ${insertHTML}
      </select>
    </div>`;
    $('.itemsForm__categoryBox').append(childSelectHtml);
  }
  function appendGrandChildrenBox(insertHTML) {
    var grandChildSelectHtml = '';
    grandChildSelectHtml = `
    <div class="itemsForm__categoryBox__form" id="grandChildren_wrapper">
      <select name="item[category_id]" id="item_grandChildren_category_id"><option value="">選択してください</option>
        ${insertHTML}
      </select>
    </div>`;
    $('.itemsForm__categoryBox').append(grandChildSelectHtml);
  }
  $('#item_category_id').on('change', function () {
    var parentCategory = document.getElementById('item_category_id').value;
    if (parentCategory != "") {
      $.ajax({
        url: '/items/new',
        type: 'GET',
        data: { id: parentCategory },
        dataType: 'json'
      })
        .done(function (children) {
          $('#children_wrapper').remove(); //親が変更された時、子以下を削除するする
          $('#grandChildren_wrapper').remove();
          var insertHTML = '';
          children.forEach(function (child) {
            insertHTML += appendOption(child);
          });
          appendChidrenBox(insertHTML);;
        })
        .fail(function () {
          alert('カテゴリー取得に失敗しました');
        })
    } else {
      $('#children_wrapper').remove(); //親カテゴリーが初期値になった時、子以下を削除するする
      $('#grandChildren_wrapper').remove();
    }
  });
  $('.itemsForm__categoryBox').on('change', '#item_children_category_id', function () {
    var childrenCategory = document.getElementById('item_children_category_id').value;
    if (childrenCategory != "") {
      $.ajax({
        url: '/items/new',
        type: 'GET',
        data: { childId: childrenCategory },
        dataType: 'json'
      })
        .done(function (grandChildren) {
          $('#grandChildren_wrapper').remove();
          var insertHTML = '';
          grandChildren.forEach(function (grandChild) {
            insertHTML += appendOption(grandChild);
          });
          appendGrandChildrenBox(insertHTML);;
        })
        .fail(function () {
          alert('カテゴリー取得に失敗しました');
        })
    } else {
      $('#grandChildren_wrapper').remove();
    }
  });
});