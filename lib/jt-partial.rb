require "jt-partial/version"
require "haml"


#js
def base_js(file)
  is_base_file = file.include?( "application.js" ) || file.include?("pages.js")
  puts file
  puts is_base_file
  is_base_file
end

def include_js
  template_path = File.expand_path('../', __FILE__)
  template = ""
  Dir.glob "js/*.js" do |file|
    if ! base_js file
      template += haml_render "#{template_path}/_js_script_tag.haml",  {js_file_path: file}
    end
  end
  template += haml_render "#{template_path}/_js_script_tag.haml",  {js_file_path: "js/pages.js"}
  template
end

#haml base
def haml_render(template_path, args = {})
  Haml::Engine.new(File.read(template_path)).render Object.new, args
end

#page_context
@@page_context = {}

def page page_name
  @@page_context[:name] = page_name
  page_path = "pages/_#{page_name}.haml"
  haml_render page_path
end

#partial
def render(partial)
  partial_path = "_#{partial}.haml"
  haml_render(partial_path)
end

def generate(template_name)
  template_path = "_#{template_name}.haml"
  output = haml_render(template_path)
  html_page = File.new("#{template_name}.html", "w")
  html_page.write(output)
end
