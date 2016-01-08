class AppointmentsController < ApplicationController
  def index
  end

  def new
    @appointment = Appointment.new
  end
  def create
    @appointment = current_user.Appointment.new(appointment_params)
  end
end
