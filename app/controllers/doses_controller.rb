class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create]
  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
    # @cocktail = Cocktail.find(params[:cocktail_id])
    # no more needed thanks to the set_cocktail method
  end

  def create
    # @cocktail = Cocktail.find(params[:cocktail_id])
    # same comment as above
    @dose = Dose.create(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    cocktail = @dose.cocktail
    @dose.destroy
    redirect_to cocktail_path(cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

end
