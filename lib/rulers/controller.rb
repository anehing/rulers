require "erubis"

module Rulers
  class Controller
    def initialize(env)
      @env = env
    end
    def env
      @env
    end
    
    def render(view_name,locals={})
      filename = File.join "app","views",controller_name, "#{view_name}.html.erb"
      template = File.read filename
      eruby = Erubis::Eruby.new(template)  
      eruby.result locals.merge(instance_valiables_hash)
    end
    
    def controller_name
      klass = self.class
      klass = klass.to_s.gsub(/Controller$/,"")
      Rulers.to_underscore klass
    end
    
    def instance_valiables_hash
      instance_hash ={}
      self.instance_variables.each {|v| instance_hash[v]=self.instance_variable_get(v)}  
      instance_hash
    end
  end
end