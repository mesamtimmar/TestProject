class Patient < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :appointments
  has_many :physicians, through: :appointments
end
