class Student < ActiveRecord::Base
  # attr_accessible :title, :body

  has_many :subordinates, class_name: "Student"
  						  foreign_key: :prefect_id

  belongs_to :prefect, class_name: "Student"						  
end
