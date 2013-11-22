class Card < ActiveRecord::Base
  belongs_to :county
  belongs_to :survey
  belongs_to :person

  has_many :card_questions, :dependent => :destroy
  accepts_nested_attributes_for :card_questions, :allow_destroy => true


  validates :survey,
            :person,
            :county,
            :presence => true
end
