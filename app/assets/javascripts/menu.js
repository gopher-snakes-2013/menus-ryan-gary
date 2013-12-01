var Menu = {
  init: function() {
    $('#new_menu').on("ajax:success", this.appendMenu)
    $('#new_menu').on("ajax:error", this.throwError)
    $('.details').on("ajax:success", this.dropMenu)
  },

  appendMenu: function(event, data, status, xhr) {
    $('#error_message').empty()
    $('#menu_list').append(data.menu_item)
    var form = document.getElementById('new_menu')
        form.reset()
    $('.menu_drop').hide()
  },

  throwError: function(event, xhr, status, error) {
    $('#error_message').empty()
    $('#error_message').append($.parseJSON(xhr.responseText).error)
  },

  dropMenu: function(event, data, status, xhr) {
    console.log("hellooooo world")
    // debugger
    var itemList = event.target.nextSibling.nextSibling.id
    $('#'+itemList).append(data.item_form)
    // console.log("helloooooooooooooo")
    $('#'+itemList).toggle('fast')
    console.log("I'm here")
  }


}

$(document).ready(function(){
  Menu.init();
  $('.menu_drop').hide()
   
})
