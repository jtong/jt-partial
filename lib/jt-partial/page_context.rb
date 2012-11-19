#page_context
@@page_context = {}

def page page_name
  @@page_context[:name] = page_name
  page_path = "pages/_#{page_name}.haml"
  haml_render page_path
end