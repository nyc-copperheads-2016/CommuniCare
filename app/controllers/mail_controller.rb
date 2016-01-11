class MailController < ApplicationController
  require 'mail'

  def new
  end

  def send_email
  smtp = { :address => 'smtp.gmail.com', :port => 587, :domain => 'gmail.com',
    :user_name => ENV["SMTP_USER"], :password => ENV["SMTP_PASSWORD"],
    :enable_starttls_auto => true,    :authentication =>:plain}
    Mail.defaults { delivery_method :smtp, smtp}
    mail = Mail.new do
      from 'primarycaregiver123@gmail.com'
      to 'communicaregiver123@gmail.com'
      subject 'CommuniCare Confirmation for Natasha Lane -Confirmed Appointment For Aunt Jane Doe'
      body 'Congratulations! Phoebe West Has Selected You As ComminiCaregiver For Aunt Jane Doe'
    end

    mail.deliver!
  end

  def send_confirmation
    smtp = { :address => 'smtp.gmail.com', :port => 587, :domain => 'gmail.com',
    :user_name => ENV["SMTP_USER"], :password => ENV["SMTP_PASSWORD"],
    :enable_starttls_auto => true,    :authentication =>:plain}
    Mail.defaults { delivery_method :smtp, smtp}
    mail = Mail.new do
      from 'primarycaregiver123@gmail.com'
      to 'communicaregiver123@gmail.com'
      subject 'CommuniCare Confirmation for Natasha Lane -Confirmed Appointment For Aunt Jane Doe'
      body 'Congratulations! Phoebe West Has Selected You As ComminiCaregiver For Aunt Jane Doe'
    end
  end
end
