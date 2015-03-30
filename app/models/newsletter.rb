class Newsletter < ActiveRecord::Base
  validates :name,
            :profissao,
            presence: true
            
  validates :email,
            presence: true,
            uniqueness: true
end
