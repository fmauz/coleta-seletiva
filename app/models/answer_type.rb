class AnswerType < ActiveRecord::Base
  has_many :anwers

  validates :name,
            :presence => true
end
