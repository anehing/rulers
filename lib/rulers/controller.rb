require "erubis"

module Rulers
  class Controller
    def initilize(env)
      @env =env
    end
  
    def env
      @env
    end
    
    def render(view_name,locals={})
      filename = File.join "app","views","#{view_name}.html.erb"
      template = File.read filename
      eruby = Erubies::Eruby.new(template)
      eruby.result locas.merge(:env=> env)
    end
  end
end