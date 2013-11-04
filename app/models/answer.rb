class Answer < ActiveRecord::Base
  belongs_to :answer_type
  belongs_to :question

  has_many :card_answers
  has_many :answer_collections
  has_many :reply_cards

  validates :question,
            :answer_type,
            :presence => true
end
