class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  has_many :comments, :dependent => :destroy
  scope :by_id,  lambda {|post_id| where("id = ?", post_id )}
end
