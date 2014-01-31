var s,
    jrxlab = {

        settings: {
            masonryContainer: $("#masonry-container")
        },

        init: function() {
            s = this.settings;
            this.startMasonry();
            this.saveAsDraft();
            this.publish();
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
                $('.simple_form').submit();
            });
        },
        publish: function(){
            $("#blog_publish").click(function(event){
                event.preventDefault();
                $('#blog_post_draft').val(0);
                $('.simple_form').submit()
            })
        }

    };

$(document).ready(function(){
    jrxlab.init();
})
