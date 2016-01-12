class AppointmentMailer < ApplicationMailer

  def confirm_occ(occ, pc, appointment)
     @occ = occ
     @pc = pc
     @appointment = appointment
     mail(from:'abc@example.com', to: occ.login.email, subject: 'Your application has been accepted!')
  end
end
