class AnswerCollection < ActiveRecord::Base
  belongs_to :answer

  default_scope { order( AnswerCollection.arel_table[:value] ) }

  validates :text,
            :value,
            :presence => true
end
