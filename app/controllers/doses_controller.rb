class DosesController < ApplicationController
  class DosesController < ApplicationController

 def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

 def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to cocktails_path
    else
      render new_cocktail_dose_path(@dose)
    end
  end


 def destroy
    @dose = dose.destroy
    redirect_to cocktails_path
  end

private

 def dose_params
    params.require(:dose).permit(:name)
  end

end
end
