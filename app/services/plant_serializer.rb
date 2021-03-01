class PlantSerializer

  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :id, :species, :light_req, :humidity_req, :water_freq, :last_water, :last_fert, :comments, :space_id
 
  def initialize(plant_object)
    @plant = plant_object
  end

  def to_serialized_json
    @plant.to_json({
      except: [:created_at, :updated_at]
    })
  end
  
end