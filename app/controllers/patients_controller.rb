class PatientsController < ApplicationController
  def update
    patient = Patient.find_by(id: params[:id])
    patient.update_attributes(patient_params)
    if patient.save
      redirect_to root_path
    else
      redirect_to edit_primary_caregiver_path(current_user.loginable)
    end
  end
  private
  def patient_params
    params.require(:patient).permit(:name, :gender, :habits, :routine, :ailments, :medication, :background, :age, :hobbies)
  end
end
