#js
def base_js(file)
  is_base_file = file.include?( "application.js" ) || file.include?("pages.js")
  is_base_file
end

def include_js
  template_path = File.expand_path('../', __FILE__)
  template = ""
  js_files = File.join("js","**", "*.js")
  Dir.glob js_files do |file|
    if ! base_js file
      template += haml_render "#{template_path}/_js_script_tag.haml",  {:js_file_path => file}
    end
  end
  template += haml_render "#{template_path}/_js_script_tag.haml",  {:js_file_path => "js/pages.js"}
  template
end