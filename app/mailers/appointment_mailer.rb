class Appointment < ApplicationMailer
  def confirm_occ(occ, pc, appointment)
     @occ = occ
     @pc = pc
     @appointment = appointment
     @url
     binding.pry
    mail(to: @occ.login.email, subject: 'Your application has been accepted!') do |format|
      format.html { render layout: 'confirm_occ' }
    end
  end
end
