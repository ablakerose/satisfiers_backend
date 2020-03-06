class NeedSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :level
  
end
