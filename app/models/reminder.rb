class Reminder < ActiveRecord::Base
 require 'twilio-ruby'
validates_presence_of :time
validates_presence_of :body
belongs_to :appointment

  def convert_to_time
    time.strftime("%I:%M%p")
  end

  def test_text
    binding.pry
  end
  handle_asynchronously :test_text, :run_at => :time


  def schedule_sending_text
    job = self.delay(run_at: self.schedule_time).send_text_message
    update_column(:delayed_job_id, job.id)
end

  def send_text_reminder(message, time)
    number = ENV["TNUM"]
    account_sid = ENV["TW_ACC_ID"]
    auth_token = ENV["TW_TOKEN"]
    @client = Twilio::REST::Client.new account_sid, auth_token
    @message = @client.messages.create({:to => "+1"+"#{number}",
                                    :from => "+16463629325",
                                     :body => :message})
  end
  handle_asynchronously :send_text_reminder, :run_at => :time

end
