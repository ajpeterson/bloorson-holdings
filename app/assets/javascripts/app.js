$(document).ready(function() {
  var $link;
  $link = $('#add_listing');

  $link.click(function(e) {
    e.preventDefault();

    var $content;
    var $url;
    $content = $('#content');
    $url = $('#add_listing').attr('href')

    $.ajax({
      type: 'GET',
      url: $url,
      success: function(partial){
        $content.html(partial);
      }
    });
  })

  $('#content').on('submit', '#listing_form', function(e) {
    var $form;
    $form = $(e.target);
    e.preventDefault();

    var $url;
    $url = $('#view_listing').attr('href')
    $.ajax({
      type: 'POST',
      url: $url,
      data: $form.serialize(),
      success: function(partial){
        var $content;
        $content = $('#content')
        $content.html(partial);
        $form.find('input').val('')
      }
    });
  });
})
