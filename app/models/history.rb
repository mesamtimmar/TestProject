class History < ActiveRecord::Base
  belongs_to :account
  # attr_accessible :title, :body
end
