class Card < ActiveRecord::Base
  belongs_to :survey
  belongs_to :person

  has_many :reply_cards

  validates :survey,
            :presence => true
end
