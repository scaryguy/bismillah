class Program < ActiveRecord::Base
  attr_accessible :active, :content, :title
  
  validates :title, presence: true
  validates :content, presence: true
  
end
