class Review < ActiveRecord::Base
  belongs_to :appointment
  validates_presence_of :body
  validates_presence_of :rating
end
