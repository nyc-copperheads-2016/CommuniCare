class PrimaryCaregiverMailer < ApplicationMailer
  def send_email_to(occ, pc, application, message)
    @occ = occ
    @pc = pc
    @application = application
    @url = primary_caregiver_appointment_url(@pc, @application)
    @message = message
    mail(from:'abc@example.com', to: pc.login.email, subject: 'Someone Has Applied To Help You!')
  end
end
