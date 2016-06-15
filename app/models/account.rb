class Account < ActiveRecord::Base
  belongs_to :user
  has_one :history
  # attr_accessible :title, :body
end
