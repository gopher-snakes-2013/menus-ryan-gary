var Item = {
	init: function() {
		$('#new_item').on('ajax:success', this.appendMenu)
		console.log('here')
		$('#new_item').on('ajax:done', this.throwError)
	},

	appendItem: function(event, data, status, xhr){
		$('#error_message').empty()
		$('item_list').append(data.item)
	},

	throwError: function(event, xhr, status, error) {
		$('#error_message').empty()
		$('item_list').append($.parseJSON(xhr.responseText).error)
	}
}

$(document).ready(function(){
	Menu.init();
})