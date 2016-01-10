class AppointmentsController < ApplicationController
  def index
    @pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
  end

  def create
    pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
    date = params[:date]
    relationship = CaregiverRelationship.create(primary_caregiver: pc)
    appointment = Appointment.new(caregiver_relationship: relationship, date: date, FIXXX)
    relationship.save
    appointment.save
    redirect_to primary_caregiver_appointments_path(pc)
  end

  def edit
    binding.pry
    @pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
    @appointment = Appointment.find_by(id: params[:id])
  end

  def update
    pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
    appointment = Appointment.find_by(id: params[:id])
    appointment.update_attributes(appointment_params)
    appointment.save
    redirect_to primary_caregiver_appointments_path(pc)
  end

private

  def appointment_params
    params.require(:appointment).permit(:date,:duration, :details)
  end

end
