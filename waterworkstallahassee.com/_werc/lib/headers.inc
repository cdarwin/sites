<meta name="google-site-verification" content="knQKnVNNLDdpK9Sj1nql6R41pScy-WeG0emWGBuJV6U" />
<meta name="msvalidate.01" content="5008C6E6B172BEB1F43E770296C3D560" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script> 
<script type="text/javascript"> 

function fbFetch(){
    var url = "http://graph.facebook.com/mattburkemusic/feed?limit=5&callback=?";

    $.getJSON(url,function(json){
            var html = "<ul>";
            $.each(json.data,function(i,fb){
                    html += "<li>";
                    if(fb.message) {
                        html += fb.message;
                    }
                    if(fb.link) { 
                        html += "<br /><a href='" + fb.link + "'>Link</a>";
                    }
                    html += "</li>";
            });
            html += "</ul>";

            $('.facebookfeed').animate({opacity:0}, 500, function(){

                    $('.facebookfeed').html(html);

            });

            $('.facebookfeed').animate({opacity:1}, 500);
    });
};

</script>
