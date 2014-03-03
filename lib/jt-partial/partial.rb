#partial
def partial(partial)
  partial_path = "_#{partial}.haml"
  haml_render(partial_path)
end

def html(partial)
  File.read(partial)
end
