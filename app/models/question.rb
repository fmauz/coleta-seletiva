class Question < ActiveRecord::Base
  belongs_to :section

  validates :code,
            :content,
            :section,
            :presence => true
end
