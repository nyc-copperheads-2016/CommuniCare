ActionMailer::Base.smtp_settings = {
      :address              => "localhost",
      :port                 => 1025,
      :domain               => "gmail.com",
      :user_name            => ENV["SMTP_USER"],
      :password             => ENV["SMTP_PASSWORD"],
      :authentication       => :plain,
      :enable_starttls_auto => true
}
