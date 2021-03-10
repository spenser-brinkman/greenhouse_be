class PlantsController < ApplicationController

  before_action :find_plant, only: [:update, :destroy]
  before_action :snake_case_params

  def index
    @plant_data = session_user.plants
    render_plant_data
  end

  def create
    @plant_data = Plant.new(plant_params)
    @plant_data.user = session_user
    if @plant_data.save
      render_plant_data
    else
      render json: {message: "ERROR, PLANT WAS INVALID. YOU MAY CHANGE THIS MESSAGE IN APP/CONTROLLERS/PLANTS_CONTROLLER.RB"}
    end
  end

  def update
    authorize(@plant_data)
    @plant_data.update(plant_params)
    render_plant_data
  end

  def destroy
    authorize(@plant_data)
    @plant_data.delete
    head :no_content
  end

  def unassigned_plants
    @plant_data = Plant.unassigned
    render_plant_data
  end

  private

  def plant_params
    params.require(:plant).permit(:species, :light_req, :humidity_req, :water_freq, :last_water, :last_fert, :comments, :space_id)
  end

  def snake_case_params
    request.parameters.deep_transform_keys!(&:underscore)
  end

  def find_plant
    @plant_data = Plant.find_by(id: params[:id])
  end

  def render_plant_data
    render json: PlantSerializer.new(@plant_data)
  end

end