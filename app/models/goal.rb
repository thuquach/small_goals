class Goal < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  has_many :steps, :dependent => :delete_all
  belongs_to :user
end
