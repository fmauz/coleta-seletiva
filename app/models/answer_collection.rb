class AnswerCollection < ActiveRecord::Base
  belongs_to :answer

  validates :text,
            :value,
            :answer,
            :presence => true
end
