// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

var UnobtrusiveLinker = Class.create({ 

  initialize: function() {
    this.options = Object.extend({
      container: 'pagination_container',
      selector: 'div.pagination a'
    }, arguments[0] || {});
    this.initLinks();
  },  

  initLinks: function() {
    $(this.options.container).select(this.options.selector).invoke('observe', 'click', this.linkHandler.bind(this));
  },  

  linkHandler: function(event) {
    event.stop();
    new Ajax.Updater(this.options.container, event.element().getAttribute('href'),{
      method: 'get',
      onComplete: this.initLinks.bind(this)
    });
  }

});

