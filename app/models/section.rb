class Section < ActiveRecord::Base
  belongs_to :survey

  has_many :questions, :dependent => :destroy

  validates :name,
            :survey,
            :presence => true
end
