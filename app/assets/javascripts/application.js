var s,
    jrxlab = {

        settings: {
        },

        init: function() {
            s = this.settings;
            this.saveAsDraft();
            this.publish();
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
