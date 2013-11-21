var Menu = {
  init: function() {
    $('#new_menu').on("ajax:success", this.appendMenu)
    $('#new_menu').on("ajax:error", this.throwError)
  },

  appendMenu: function(event, data, status, xhr) {
    $('#error_message').empty()
    $('#menu_list').append(data.menu_item)
    var form = document.getElementById('new_menu')
    form.reset()
  },

  throwError: function(event, xhr, status, error) {
    $('#error_message').empty()
    $('#error_message').append($.parseJSON(xhr.responseText).error)
  }

}

$(document).ready(function(){
  Menu.init();
})