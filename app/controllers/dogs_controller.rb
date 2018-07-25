class DogsController < ApplicationController
	# include DogsHelper
	include ApplicationHelper

	def index
		@dogs = Dog.all
		binding.pry


		# if 1 + 1 != 2
		# 	render partial: 'layouts/nav', locals: { dogs: @dogs}
		# elsif 1 + 1 == 2 

		# 	render 'layouts/welcome'
		# else
		# 	redirect_to owners_path
		render :index
		# end
	end

  def new
    @dog = Dog.new
	end
	
	def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to dog_path(@dog)
		else
			render :new
     	# redirect_to new_dog_path
    end
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def adopt
    @dog = Dog.find(params[:id])
  end

  def abandon
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)
    if @dog.save
      redirect_to dog_path(@dog)
    else
      redirect_to "/dogs/#{@dog.id}/adopt"
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :shelter_id, :owner_id, owner_attributes: [:name])
  end

end