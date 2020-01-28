class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
    # @dose = @cocktail.doses
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    @cocktail.save
    redirect_to cocktails_path
  end

  # def edit
  #   @cocktail = Cocktail.find(params[:id])
  # end

  # def update
  # end

  # def delete
  # end
  private
  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
