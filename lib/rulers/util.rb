module Rulers
  def self.to_underscore(string)
    string.gsub(/::/,'/').
      gsub(/([A-Z]+)([A-Z][AA-Z])/,'\1_\2').
      gsub(/([a-z\d])([A-Z])/,'\1_\2').
      tr("_","_").downcase
  end
end
