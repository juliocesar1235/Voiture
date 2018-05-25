class CarsController < ApplicationController
  def show
    @car = Car.find(params[:id])
  end

  def index
    @cars = Car.all
  end

  def new

  end

  def create
    @car = Car.new(car_params)

    @car.save
    redirect_to @car
  end
end

private
  def car_params
    params.require(:car).permit(:brand, :car_model)
  end
