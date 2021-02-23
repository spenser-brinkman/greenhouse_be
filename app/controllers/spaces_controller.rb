class SpacesController < ApplicationController
  before_action :find_space, only: [:show, :update, :destroy]

  def index
    @space_data = Space.all
    render_space_data
  end

  def show
    render_space_data
  end

  def create
    @space_data = Space.new(space_params)
    if @space_data.save
      render_space_data
    else
      render json: {message: "ERROR, YOU MAY CHANGE THIS MESSAGE IN APP/CONTROLLERS/SPACES_CONTROLLER.RB"}
    end
  end

  def update
    @space_data.update(space_params)
    render_space_data
  end

  def destroy
    @space_data.plants.each {|p| p.space_id = ""}
    @space_data.delete
  end


  private

  def space_params
    params.require(:space).permit(:name, :humidity, :light)
  end

  def find_space
    @space_data = Space.find_by(id: params[:id])
  end

  def render_space_data
    render json: SpaceSerializer.new(@space_data).to_serialized_json
  end
end