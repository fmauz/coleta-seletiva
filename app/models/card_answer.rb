class CardAnswer < ActiveRecord::Base
  belongs_to :card_question
  belongs_to :answer

  order( "answer_id" )

  validates :answer,
            :presence => true
end
