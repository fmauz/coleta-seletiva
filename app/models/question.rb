class Question < ActiveRecord::Base
  belongs_to :section
  
  has_many :answers, :dependent => :destroy
  has_many :card_questions, :dependent => :destroy
  
  validates :code,
            :content,
            :section,
            :presence => true
end
