class CardQuestion < ActiveRecord::Base
  belongs_to :card
  belongs_to :question

  has_many :card_answers
  
  validates :card,
            :question,
            :presence => true
end
