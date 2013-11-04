class Question < ActiveRecord::Base
  belongs_to :section
  
  has_many :answers
  has_many :card_questions
  
  validates :code,
            :content,
            :section,
            :presence => true
end
