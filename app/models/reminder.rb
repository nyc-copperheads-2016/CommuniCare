class Reminder < ActiveRecord::Base
 require 'twilio-ruby'
validates_presence_of :time
validates_presence_of :body
belongs_to :appointment

  def convert_to_time
    #for demo-manually change timezone display
    (time-+5*60*60).strftime("%I:%M%p")
  end

  def send_text_reminder(message)
    number = ENV["TNUM"]
    account_sid = ENV["TW_ACC_ID"]
    auth_token = ENV["TW_TOKEN"]
    @client = Twilio::REST::Client.new account_sid, auth_token
    @message = @client.messages.create({:to => "+1"+"#{number}",
                                    :from => "+16463629325",
                                     :body => message})
  end

end
