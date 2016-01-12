class TwilioController < ApplicationController
 require 'twilio-ruby'
  def index
  end

  def send_sms

    message = params[:message]
    number = params[:number]
    account_sid = ENV["TW_ACC_ID"]
    auth_token = ENV["TW_TOKEN"]

    @client = Twilio::REST::Client.new account_sid, auth_token

    @message = @client.messages.create({:to => "+1"+"#{number}",
                                    :from => "+16463629325",
                                     :body => "#{message}"})
    redirect_to '/'
  end

  def new
    @twiliNum = ENV["TNUM"]
  end
end
