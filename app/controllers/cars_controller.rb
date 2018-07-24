class CarsController < ApplicationController
  def show
    @car = Car.find(params[:id])
  end

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def edit
    @car = Car.find(params[:id])
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      @car.save
      redirect_to @car
    else
      render 'new'
    end
  end

  def update
    @car = Car.find(params[:id])

    if @car.update(car_params)
      redirect_to @car
    else
      render 'edit'
    end
  end
end

def destroy
  @car = Car.find(params[:id])
  @Car.destroy

  redirect_to cars_path
end

private
  def car_params
    params.require(:car).permit(:brand, :car_model)
  end
