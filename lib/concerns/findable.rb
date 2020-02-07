module Findable
  module ClassMethods 
  
  def find_by_name(name)
    self.all.detect{ |n| n.name == name }
  end
  
  end
  
  module InstanceMethods 
  
  def to_param
    name.downcase.gsub(' ', '-')
  end
  
  end
end 
  
  
  
  
end 