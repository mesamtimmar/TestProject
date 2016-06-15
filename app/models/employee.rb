class Employee < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :pictures, :as => :imageable
end
