class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def show
    @pet = Pet.find_by(id: params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(
    name: params[:pet][:name],
    breed: params[:pet][:breed],
    image: params[:pet][:image]
    )
    @pet.save
    redirect_to "/pets/#{@pet.id}"
  end


end
