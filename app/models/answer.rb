class Answer < ActiveRecord::Base
  belongs_to :answer_type
  belongs_to :question

  has_many :card_answers, :dependent => :destroy
  
  has_many :answer_collections, :dependent => :destroy
  accepts_nested_attributes_for :answer_collections, :allow_destroy => true, :reject_if => Proc.new{|a| a["text"].blank? || a["value"].blank? }

  validates :question,
            :answer_type,
            :presence => true
end
