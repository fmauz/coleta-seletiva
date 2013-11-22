class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :person, :dependent => :destroy
  accepts_nested_attributes_for :person, :allow_destroy => true
  
  belongs_to :role

  validates :password,
            :person,
            :confirmation => true


  def is_dev?
    role_id == 1
  end
end
