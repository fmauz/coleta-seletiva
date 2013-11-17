class County < ActiveRecord::Base
  has_many :cards

  validates :name,
            :code,
            :cnpj,
            :presence => true
end
