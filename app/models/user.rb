class User < ActiveRecord::Base
  # attr_accessible :title, :body
has_one :account
has_one :history, :through => :account
end
