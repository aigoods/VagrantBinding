require "vagrant_binding/version"
require 'rails/commands/server'

module Rails
  class Server
    def default_options
      super.merge(Host:  '0.0.0.0', Port: 3000)
    end
  end
end
