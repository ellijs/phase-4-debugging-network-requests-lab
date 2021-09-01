class ToysController < ApplicationController
  wrap_parameters format: []

  def index
    toys = Toy.all
    render json: toys
  end

  def show
    toy =  toy = Toy.find_by(id: params[:id])
    render json: toy
  end

  def create
    toy = Toy.create(toy_params)
    render json: toy, status: :created
  end

  def update
    toy = Toy.find_by(id: params[:id])
    toy.update(toy_params)
    render json: toy, status: :accepted
  end

  def destroy
    toy = Toy.find_by(id: params[:id])
    toy.destroy
    head :no_content
  end

  # def increment_likes
  #   toy = Toy.find_by(id: params[:id])
  #   if toy
  #     toy.update(likes: bird.likes + 1)
  #     render json: toy, status: :accepted
  #   else
  #     render json: { error: "Bird not found" }, status: :not_found
  #   end
  # end

  private
  
  def toy_params
    params.permit(:name, :image, :likes)
  end

end
