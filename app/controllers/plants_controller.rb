class PlantsController < ApplicationController

  before_action :find_plant, only: [:show, :update, :destroy]
  before_action :snake_case_params

  def index
    @plant_data = Plant.all
    render_plant_data
  end

  def show
    render_plant_data
  end

  def create
    @plant_data = Plant.new(plant_params)
    if @plant_data.save
      render_plant_data
    else
      render json: {message: "ERROR, PLANT WAS INVALID. YOU MAY CHANGE THIS MESSAGE IN APP/CONTROLLERS/PLANTS_CONTROLLER.RB"}
    end
  end

  def update
    @plant_data.update(plant_params)
    render_plant_data
  end

  def destroy
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