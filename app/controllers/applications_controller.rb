class ApplicationsController < ApplicationController
  def new
    @appointment = Appointment.find_by(id: params[:appointment_id])
    @application = Application.new
  end

  def create
    @appointment = Appointment.find_by(id: params[:appointment_id])
    if !@appointment.applicants.include?(current_user.loginable)
      @application = Application.new(application_params)
      @application.on_call_caregiver = current_user.loginable
      @application.appointment = @appointment
      if @application.save && @application.appointment
        PrimaryCaregiverMailer.send_email_to(current_user.loginable, @appointment.caregiver_relationship.primary_caregiver, @application, params[:application][:body]).deliver
        redirect_to primary_caregiver_path(@appointment.caregiver_relationship.primary_caregiver)
      else
        render :new
      end
    else
      flash[:notice] = "You've already applied to this appointment."
      redirect_to primary_caregiver_path(@appointment.caregiver_relationship.primary_caregiver)
    end
  end

  private
  def application_params
    params.require(:application).permit(:body)
  end
end
