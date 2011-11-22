// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs

//= require_tree .
$(document).ready(function() {
    $('#add_book').click(function() {
       $('#modal_w').modal({modal: true, minHeight: 325, minWidth:350, overlayClose: true,
           onOpen: function (dialog) {
	            dialog.overlay.fadeIn('fast', function () {
		            dialog.container.slideDown('fast', function () {
			        dialog.data.fadeIn('fast');
		        });
	        });
        },
           onClose: function (dialog) {
	            dialog.data.fadeOut('fast', function () {
		            dialog.container.slideUp('fast', function () {
			        dialog.overlay.fadeOut('fast', function () {
				         $.modal.close(); // must call this!
			        });
		        });
	        })}});
        return false;
    });
});
