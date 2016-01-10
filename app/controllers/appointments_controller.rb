class AppointmentsController < ApplicationController
  def index
    @pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
  end

  def create
    pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
    relationship = CaregiverRelationship.create(primary_caregiver: pc)
    appointment = Appointment.new(caregiver_relationship: relationship, date: params[:date], start_time: DateTime.parse(params[:date]))
    relationship.save
    appointment.save
    redirect_to primary_caregiver_appointments_path(pc)
  end

  def edit
    @pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
    @appointment = Appointment.find_by(id: params[:id])
  end

  def update
    pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
    appointment = Appointment.find_by(id: params[:id])
    appointment.update_attributes(appointment_params)
    appointment.start_time = appointment.convert_to_datetime(Time.parse(params[:appointment]["start_time(5i)"]))
    appointment.save
    redirect_to primary_caregiver_appointments_path(pc)
  end

  def destroy
    pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
    appointment = Appointment.find_by(id: params[:id])
    appointment.destroy
    redirect_to primary_caregiver_appointments_path(pc)
  end

private

  def appointment_params
    params.require(:appointment).permit(:date,:duration, :details)
  end

end
