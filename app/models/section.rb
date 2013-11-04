class Section < ActiveRecord::Base
  belongs_to :survey

  has_many :questions

  validates :name,
            :survey,
            :presence => true
end
