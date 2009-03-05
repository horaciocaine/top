(function() {
  
  var markOpenTopics = function() {
    var currentLocation = new String(window.location);
    var uri = currentLocation.replace(/#.*$/, "");
    
    jQuery("#topicmap li").each(function() {
      var li = this;
      jQuery(this).children("a").each(function() {
        if (uri.substr(uri.length - this.href.length) == this.href) {
          jQuery(this).addClass("currenttopic").siblings("ul").addClass("open");
          
          //And then open each of the parents
          var currentElement = jQuery(li);
          while (currentElement = currentElement.parent()) {
            if (currentElement.attr("id") == "topicmap") {
              break;
            }
            
            currentElement.addClass("open");
          }
        }
      });
    });
  };
  
  var setupTopicTree = function() {
    jQuery("#topicmap li ul").each(function() {
      var expander = document.createElement("a");
      var open = jQuery(this).hasClass("open");
      
      jQuery(expander)
        .attr("href", "javascript:void(0)")
        .css("cursor", "pointer")
        .css("text-decoration", "none")
        .css("font-weight", "normal")
        .css("width", "16px")
        .css("display", "block")
        .css("float", "left")
        .text(open ? "-" : "+")
        ;
      
      if (!open) {
        jQuery(this).addClass("closed");
      }
      
      jQuery(this).parent().css("padding-left", "0");
      
      var ul = this;
      
      jQuery(expander).bind("click", function() {
        if (jQuery(ul).hasClass("closed")) {
          jQuery(ul).removeClass("closed").addClass("open").slideDown("fast");
          jQuery(expander).text("-");
        } else {
          jQuery(ul).removeClass("open").addClass("closed").slideUp("fast");
          jQuery(expander).text("+");
        }
        expander.blur();
      });
      
      if (!open) {
        jQuery(this).hide();
      }
      
      jQuery(this).parent().prepend(expander);
    });
  };
  
  jQuery(document).ready(function() {
    
    markOpenTopics();
    setupTopicTree();
    
  });
  
})();
