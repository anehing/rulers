module Rulers
  class Application
    def get_controller_and_action(env)
      _,cont,action,after = 
        env["Path_INFO"].split('/',4)
      cont = cont.capitalize
      cont + = "Controller"
      `echo #{cont} > debug.txt`;
      [Object.const_get(cont),action]
    end
  end
end
