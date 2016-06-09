require "vagrant_binding/version"
require 'rails/commands/server'
#TODO: move code into vagrant_binding/server.rb 
module Rails
  class Server
    def default_options
    	super.merge(Host:  '0.0.0.0')
    end
  end
end
