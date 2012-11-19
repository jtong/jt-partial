require "haml"
#haml toolkit
def haml_render(template_path, args = {})
  Haml::Engine.new(File.read(template_path)).render Object.new, args
end
