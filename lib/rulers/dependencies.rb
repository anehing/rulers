class Object
  def self.const_missing(c)
      require Rulers.to_underscore(c.to_s)
      if Object.const_defined?(c) then return Object.const_get(c) else raise LoadError end
      # Object.const_get(c)
  end
end

#第一次走，@call_const_missing==nil
