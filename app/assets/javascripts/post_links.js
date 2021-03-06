$(window).load(function(){
  if ($('.post').length) {
    max_opacity = 0.8;
    min_opacity = 0.6;
    $meta = $('.date-time');
    meta_bottom = $meta.offset().top + $meta.height();
    $discussion = $('.discussion');
    discussion_top = $discussion.offset().top;
    discussion_bottom = $discussion.offset().top + $discussion.height();
    discussion_height = $discussion.height();
    $window = $(window);
    $navLinks = $('.prev_post, .next_post');

    onScrollOrResize = function(event) {
      var opacity, windowBottom, windowHeight, windowScrollTop, windowWidth;
      windowHeight = $window.height();
      windowWidth = $window.width();
      windowScrollTop = $window.scrollTop();
      windowBottom = windowScrollTop + windowHeight;
      if (windowScrollTop < meta_bottom) {
        opacity = 0;
      } else if (windowScrollTop = meta_bottom) {
        opacity = max_opacity - ((windowScrollTop / meta_bottom) * (max_opacity - min_opacity));
      } else if (windowBottom < discussion_top) {
        opacity = min_opacity;
      } else if (windowBottom < discussion_bottom) {
        opacity = min_opacity + ((windowBottom - discussion_top) / discussion_height * (max_opacity - min_opacity));
      } else {
        opacity = max_opacity;
      }
      $navLinks.css({
        opacity: opacity
      });
    };
    $(window).scroll(onScrollOrResize);
    $(window).resize(onScrollOrResize);


    $(document).keydown(function(e){
      if (e.keyCode == 37){
        //Left pressed.
        window.open($('a.prev_post').attr('href'), '_self');
      } else if (e.keyCode == 39){
        //Right pressed
        window.open($('a.next_post').attr('href'), '_self');      
      }
    });

  }
});