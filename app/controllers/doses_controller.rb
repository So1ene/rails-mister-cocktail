class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(description: params[:dose][:description])
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    @dose.ingredient = Ingredient.find_by(name: params[:dose][:ingredient])
    @ingredients = Ingredient.all
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    dose = Dose.find[params[:id]]
    dose.destroy

    redirect_to cocktail_path(@cocktail)
  end
end
