class PlantSerializer

  def initialize(plant_object)
    @plant = plant_object
  end

  def to_serialized_json
    @plant.to_json({
      except: [:created_at, :updated_at]
    })
  end
  
end