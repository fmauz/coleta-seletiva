class County < ActiveRecord::Base
  has_many :cards

  default_scope order( County.arel_table[:name] )

  validates :name,
            :code,
            :cnpj,
            :presence => true
end
