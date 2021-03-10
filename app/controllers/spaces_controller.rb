class SpacesController < ApplicationController
  
  before_action :find_space, only: [:update, :destroy]
  before_action :snake_case_params

  def index
    @space_data = session_user.spaces
    render_space_data
  end

  def create
    @space_data = Space.new(space_params)
    @space_data.user = session_user
    if @space_data.save
      render_space_data
    else
      render json: {message: "ERROR, YOU MAY CHANGE THIS MESSAGE IN APP/CONTROLLERS/SPACES_CONTROLLER.RB"}
    end
  end

  def update
    authorize(@space_data)
    @space_data.update(space_params)
    render_space_data
  end

  def destroy
    authorize(@space_data)
    @space_data.plants.each do |p|
      p.space_id = nil
      p.save
    end
    @space_data.delete
  end


  private

  def space_params
    params.require(:space).permit(:name, :humidity, :light)
  end

  def snake_case_params
    request.parameters.deep_transform_keys!(&:underscore)
  end
  
  def find_space
    @space_data = Space.find_by(id: params[:id])
  end

  def render_space_data
    render json: SpaceSerializer.new(@space_data)
  end
end