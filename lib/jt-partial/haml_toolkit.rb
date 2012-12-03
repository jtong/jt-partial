require "haml"
require 'action_pack'
require 'action_controller'
require 'action_view'

require 'rails'

require "haml/helpers/action_view_mods"

require 'haml/template'

#haml toolkit

def haml_render(template_path, args = {})
  Haml::Engine.new(File.read(template_path)).render Object.new, args
end


def container template_path, args, &block
  Haml::Engine.new(File.read(template_path)).render Object.new, args do
    capture_haml( &block )
  end
end
