class Login < ActiveRecord::Base
  has_secure_password
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :address, presence: true
  validates :password, length:{minimum:6}
  validates_confirmation_of :password, :confirm => :password_comfirmation
  validates :zipcode, length:{maximum:5}
  validates_format_of :phone, :with => /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/, :on => :create
  belongs_to :loginable, :polymorphic => true

  geocoded_by :city_state
  before_validation :geocode

  # after_validation :geocode

  def city_state
    city + ", " + state
  end

  def self.change_to_loginable(logins)
    loginables = []
    logins.each do |login|
      loginables << login.loginable
    end
    loginables
  end

  def full_name
    first_name + " " + last_name
  end

end
