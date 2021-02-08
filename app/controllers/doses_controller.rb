class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(params_dose)
    if @dose.save
      redirect_to cocktail_path(params[:cocktail_id])
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    if @dose.destroy
      flash[:success] = 'Dose was successfully deleted.'
      redirect_to cocktail_path(@dose.cocktail)
    else
      flash[:error] = 'Something went wrong'
      redirect_to cocktail_path(@dose.cocktail)
    end
  end
  
  private

  def params_dose
    params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
  end
end
