jQuery(document).ready(function() {
  if (navigator.appVersion.match(/MSIE 6/)) {
    jQuery('img, #headercontent, .note').each(function() {
      DD_belatedPNG.fixPng(this);
    });
  }
  
  jQuery('.corners.top.right').each(function() {
    DD_roundies.roundify.call(this, [0, 10, 0, 0]);
  });
  
  jQuery('.corners.top.left').each(function() {
    DD_roundies.roundify.call(this, [10, 0, 0, 0]);
  });
  
  jQuery('.corners.bottom.left').each(function() {
    DD_roundies.roundify.call(this, [0, 0, 0, 10]);
  });
  
  jQuery('.corners.bottom.right').each(function() {
    DD_roundies.roundify.call(this, [0, 0, 10, 0]);
  });
  
  jQuery('.corners.top.right.left').each(function() {
    DD_roundies.roundify.call(this, [10, 10, 0, 0]);
  });
  
  jQuery('.corners.bottom.right.left').each(function() {
    DD_roundies.roundify.call(this, [0, 0, 10, 10]);
  });
  
  jQuery('.corners.top.right.bottom.left').each(function() {
    DD_roundies.roundify.call(this, [10, 10, 10, 10]);
  });
  
  jQuery('.featurelist li span').each(function() {
    DD_roundies.roundify.call(this, [10, 10, 10, 10]);
  });
  
  jQuery('input.button').each(function() {
    DD_roundies.roundify.call(this, [8, 8, 8, 8]);
  });
  
  /* I really wanted this more streamlined way to work, but alas, it does not
  
  jQuery('.corners').each(function() {
    var bl = parseInt(jQuery(this).css('border-bottom-left-radius'));
    var tr = parseInt(jQuery(this).css('border-top-right-radius'));
    var tl = parseInt(jQuery(this).css('border-top-left-radius'));
    var br = parseInt(jQuery(this).css('border-bottom-right-radius'));
    
    DD_roundies.roundify.call(this, [tl, tr, br, bl]);
  });
  */
});

