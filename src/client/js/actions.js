jQuery(document).ready(function($) {
    $('#generate-btn').on('click', function() {
        $.ajax('http://yeezyme.com/lyric', {
            success: function(data) {
                $('#lyrics').html(data.lyric);
            },
            error: function(err) {
                console.log(err);
            }
        })
    });
});