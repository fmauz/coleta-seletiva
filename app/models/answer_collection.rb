class AnswerCollection < ActiveRecord::Base
  belongs_to :answer

  validates :text,
            :value,
            :presence => true
end
