class Reminder < ActiveRecord::Base
validates_presence_of :time
validates_presence_of :body
belongs_to :appointment
end
