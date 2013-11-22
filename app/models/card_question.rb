class CardQuestion < ActiveRecord::Base
  belongs_to :card
  belongs_to :question
  
  has_many :card_answers, :dependent => :destroy
  accepts_nested_attributes_for :card_answers, :allow_destroy => true

  validates :question,
            :presence => true
end
