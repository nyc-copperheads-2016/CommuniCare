class OnCallCaregiverMailer < ApplicationMailer

  def send_email_to(occ, pc, message)
     @occ = occ
     @pc = pc
     @url = primary_caregiver_url(pc)
     @message = message
     mail(from:'abc@example.com', to: occ.login.email, subject: 'Your Caring Services Are Needed!')
  end
end
