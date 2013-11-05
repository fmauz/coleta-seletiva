class Answer < ActiveRecord::Base
  belongs_to :answer_type
  belongs_to :question

  has_many :card_answers
  
  has_many :answer_collections
  accepts_nested_attributes_for :answer_collections, :allow_destroy => true, :reject_if => Proc.new{|a| a["text"].blank? || a["value"].blank? }


  has_many :reply_cards

  validates :question,
            :answer_type,
            :presence => true
end
