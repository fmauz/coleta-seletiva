class CardAnswer < ActiveRecord::Base
  belongs_to :card_question
  belongs_to :answer

  default_scope order( "answer_id" )

  validates :answer,
            :presence => true
end
