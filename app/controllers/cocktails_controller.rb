class CocktailsController < ApplicationController
  # before_action :select_cocktail, only: [:show, :edit, :update]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render 'new'
    end
  end

  # def update
  #   @cocktail = Cocktail.find(params[:id])
  #   respond_to do |format|
  #     if @cocktail.update cocktail_params
  #     end
  #   end
  # end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
