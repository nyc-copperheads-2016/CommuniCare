class AppointmentsController < ApplicationController
  def index
    @pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
  end

  def create
    pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
    relationship = CaregiverRelationship.create(primary_caregiver: pc)
    appointment = Appointment.new(caregiver_relationship: relationship, date: params[:date], start_time: DateTime.parse(params[:date]), pc_confirmed: false, occ_confirmed: false)
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

  def show
    @pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
    @appointment = Appointment.find(params[:id])
  end

  def destroy
    pc = PrimaryCaregiver.find_by(id: params[:primary_caregiver_id])
    appointment = Appointment.find_by(id: params[:id])
    appointment.destroy
    redirect_to primary_caregiver_appointments_path(pc)
  end

  def select
    appointment = Appointment.find_by(id: params[:appointment_id])
    application = Application.find_by(id: params[:id])
    appointment.pc_confirmed = true
    appointment.occ_confirmed = true
    existing_relationship = CaregiverRelationship.where(primary_caregiver: appointment.caregiver_relationship.primary_caregiver, on_call_caregiver: application.on_call_caregiver)
    if existing_relationship.empty?
      appointment.caregiver_relationship.on_call_caregiver=application.on_call_caregiver
    else
      appointment.caregiver_relationship = existing_relationship.first
    end
    appointment.save
    appointment.caregiver_relationship.save
    # AppointmentMailer.confirm_occ(appointment.caregiver_relationship.on_call_caregiver, appointment.caregiver_relationship.primary_caregiver, appointment)
    redirect_to primary_caregiver_appointments_path(appointment.caregiver_relationship.primary_caregiver)
  end

  def confirmed_index
    on_call_caregiver= OnCallCaregiver.find_by(id: params[:on_call_caregiver_id])
    @confirmed_appointments = Appointment.find_confirmed_from_relationships(CaregiverRelationship.where(on_call_caregiver: on_call_caregiver))
  end

  def confirmed_show
    @confirmed_appointment = Appointment.find_by(id: params[:id])
  end

private
  def appointment_params
    params.require(:appointment).permit(:date,:duration, :details)
  end

end
