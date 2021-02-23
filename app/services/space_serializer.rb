class SpaceSerializer

  def initialize(space_object)
    @space = space_object
  end

  def to_serialized_json
    @space.to_json({
      except: [:created_at, :updated_at]
    })
  end
    
end