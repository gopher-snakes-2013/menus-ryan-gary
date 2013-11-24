var Item = {
	init: function() {
		$('#new_item').on('ajax:success', this.appendItem)
		console.log('here')
		$('#new_item').on('ajax:done', this.throwError)
	},

	appendItem: function(event, data, status, xhr){
		$('#error_message').empty()
		$('#item_list').append(data.item_list)
		var form = document.getElementById('new_item')
		form.reset()
	},

	throwError: function(event, xhr, status, error) {
		$('#error_message').empty()
		$('#error_message').append($.parseJSON(xhr.responseText).error)
	}
}

$(document).ready(function(){
	Item.init();
})