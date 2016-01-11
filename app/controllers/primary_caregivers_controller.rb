class PrimaryCaregiversController < ApplicationController
  def edit
    @pcc = PrimaryCaregiver.find_by(id: params[:id])
  end


  def update
    pcc = PrimaryCaregiver.find_by(id: params[:id])
    pcc.update_attributes(pcc_params)
    if pcc.save
      redirect_to root_path
    else
      redirect_to primary_caregiver_path(primary_caregiver.id)
    end
  end

  def show
    @caregiver = PrimaryCaregiver.find_by(id: params[:id])
  end

  private
    def pcc_params
      params.require(:primary_caregiver).permit(:about_me)
    end




end
