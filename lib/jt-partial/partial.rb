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
  output = haml_render(template_path)
  html_page = File.new("#{template_name}.html", "w")
  html_page.write(output)
end