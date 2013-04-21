#partial
def partial(partial)
  partial_path = "_#{partial}.haml"
  haml_render(partial_path)
end

def html(partial)
  File.read(partial)
end

def generate(template_name)
  template_path = "_#{template_name}.haml"
  render_and_output_to_file template_path, template_name
end

def render_and_output_to_file(template_path, output_path)
  output = haml_render(template_path)
  html_page = File.new("#{output_path}.html", "w")
  html_page.write(output)
end


