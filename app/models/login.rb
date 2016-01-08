class Login < ActiveRecord::Base
  has_secure_password
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates :address
  validates :password, length:{minimum:6}
  validates_confirmation_of :confirm => :password_comfirmation
  validates :zipcode, length:{maximum:5}
  validates_format_of :phone, with: /\A(\d{10}|\(?\d{3}\)?[-. ]\d{3}[-.]\d{4})\z/, presence: true
  belongs_to :loginable, :polymorphic => true
end
