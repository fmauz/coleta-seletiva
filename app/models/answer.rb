class Answer < ActiveRecord::Base
  belongs_to :answer_type
  belongs_to :question

  has_many :answer_collection
  has_many :reply_cards
end
