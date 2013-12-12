class Section < ActiveRecord::Base
  belongs_to :survey

  default_scope order( Section.arel_table[:order] )

  has_many :questions, :dependent => :destroy

  validates :name,
            :survey,
            :presence => true
end
