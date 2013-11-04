class CardQuestion < ActiveRecord::Base
  belongs_to :card
  belongs_to :question
end
