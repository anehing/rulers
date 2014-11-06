require "rulers/version"
require "rulers/routing"
require "rulers/util"
require "rulers/dependencies"
require "rulers/controller"
module Rulers
  # Your code goes here...
  class Application
    def call(env)

      if env['PATH_INFO'] == '/favicon.ico'
        return [404, {'Content-Type'=>'text/html'},[]]
      end
      begin
     	  klass,act = get_controller_and_action(env)
     	  controller = klass.new(env)
        text = controller.send(act) 
      rescue LoadError => le
        p 'LoadError'
        text = le.backtrace.to_s
      rescue NoMethodError => me
        p 'NoMethodError'
        text = me.backtrace.to_s
      end

      [200,{'Content-Type'=>'text/html'},[text]]
    end
  end
end
