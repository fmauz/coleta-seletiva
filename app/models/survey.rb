class Survey < ActiveRecord::Base
  has_many :cards
  has_many :sections
end
