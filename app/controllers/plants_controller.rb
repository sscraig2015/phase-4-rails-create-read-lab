class PlantsController < ApplicationController
  def index
    render json: Plant.all, except: [:created_at, :updated_at]
  end

  def show
    render json: Plant.find(params[:id]), except: [:created_at, :updated_at] 
  end

  def create
    plant = Plant.create(params.permit(:name, :image, :price))
    render json: plant, status: :created
  end

end
