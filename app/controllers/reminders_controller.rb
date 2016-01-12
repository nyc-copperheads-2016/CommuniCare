class RemindersController < ApplicationController
  def create
    appointment = Appointment.find_by(id: params[:appointment_id])
    reminder = Reminder.new(reminder_params)
    reminder.appointment = appointment
    reminder.time = appointment.convert_to_datetime(Time.parse(params[:reminder]["time(5i)"]))
    reminder.save
    redirect_to edit_primary_caregiver_appointment_path(appointment.caregiver_relationship.primary_caregiver, appointment)
  end

  def destroy
    appointment = Appointment.find_by(id: params[:appointment_id])
    reminder = Reminder.find_by(id: params[:id])
    reminder.destroy
    redirect_to edit_primary_caregiver_appointment_path(appointment.caregiver_relationship.primary_caregiver, appointment)
  end

  private
  def reminder_params
    params.require(:reminder).permit(:body)
  end
end
