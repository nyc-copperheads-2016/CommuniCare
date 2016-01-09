class AppointmentsController < ApplicationController
  def index
  end

  def new
    @appointment = Appointment.new
  end
  def create
    current_user = Login.first
    @appointment = current_user.loginable.appointments.new(appointment_params)
    if @appointment.save
      redirect_to appointments_path
    else
      render 'new'
    end
  end

private
  def appointment_params
    params.require(:appointment).permit(:date, :duration)
  end
end
