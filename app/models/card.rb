class Card < ActiveRecord::Base
  belongs_to :survey
  belongs_to :person

  has_many :card_questions

  validates :survey,
            :person,
            :presence => true
end
