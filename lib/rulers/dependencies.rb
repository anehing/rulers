class Object
  def self.const_missing(c)
      require Rulers.to_underscore(c.to_s)
  	  klass = Object.const_get(c) 
  end
end

#第一次走，@call_const_missing==nil
