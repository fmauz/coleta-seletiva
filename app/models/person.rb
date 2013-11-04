class Person < ActiveRecord::Base
  belongs_to :user

  has_many :cards
  
  validates :user,
            :presence => true
end
