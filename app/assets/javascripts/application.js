// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require tinymce-jquery
//= require select2
//= require masonry/jquery.masonry
//= require_tree .

var s,
    jrxlab = {

        settings: {
            masonryContainer: $("#masonry-container")
        },

        init: function() {
            s = this.settings;
            this.startMasonry();
            this.saveAsDraft();
        },

        startMasonry: function() {
            s.masonryContainer.masonry({
                itemSelector: '.box'
            });
        },
        saveAsDraft: function(){
            $('#submit_draft').click(function(event){
                event.preventDefault();
                $('#blog_post_draft').val(1);
                $('form').submit();
            });
        }

    };

$(document).ready(function(){
    jrxlab.init();
})
