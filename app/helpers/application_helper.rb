# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def ajax_pag(opts = [{}])
    opts = [opts] if opts.is_a? Hash
    ret = "document.observe('dom:loaded', function() { "
    opts.each {|option| ret += "new UnobtrusiveLinker(#{option.to_json}); "}
    ret + "});\n"
  end

end
