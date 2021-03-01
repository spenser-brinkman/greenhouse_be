class PlantSerializer

  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :id, :species, :light_req, :humidity_req, :water_freq, :last_water, :last_fert, :comments, :space_id
 
end