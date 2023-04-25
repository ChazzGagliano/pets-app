class PetsController < ApplicationController
  def index
    p current_user
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
    image: params[:pet][:image],
    user_id: current_user.id
    )
    @pet.save!
    redirect_to "/pets/#{@pet.id}"
  end

  def edit
    @pet = Pet.find_by(id: params[:id])
    render :edit
  end

  def update 
    pet = Pet.find_by(id: params[:id])
    pet.name = params[:pet][:name]
    pet.breed = params[:pet][:breed]
    pet.image = params[:pet][:breed]
    pet.save
    redirect_to "/pets/#{pet.id}"
  end

  def destroy
    pet = Pet.find_by(id: params[:id])
    pet.destroy
    redirect_to "/pets"
  end

end
