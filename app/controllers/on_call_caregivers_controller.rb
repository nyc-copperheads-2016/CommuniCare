class OnCallCaregiversController < ApplicationController
  def edit
    @occ = OnCallCaregiver.find_by(id: params[:id])
  end

  def update
    occ = OnCallCaregiver.find_by(id: params[:id])
    occ.update_attributes(occ_params)
    if occ.save
      redirect_to root_path
    else
      redirect_to on_call_caregiver_path(on_call_caregiver.id)
    end
  end

  def show
    @caregiver = OnCallCaregiver.find_by(id: params[:id])
  end

  private
    def occ_params
      params.require(:on_call_caregiver).permit(:education, :credentials, :about, :specialities, :experience, :hobbies)
    end
end
