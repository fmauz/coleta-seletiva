class FormSection < ActiveRecord::Base
  belongs_to :form_section

  has_many :surveys

  default_scope { order( :order ) }

  scope :tops, -> { where( form_section_id: nil ) }

  validates :name,
            :presence => true

  def all_cards_fill?( county )
    return surveys.map{|a| a.cards.where(county_id: county.id ).count == 0 }.delete_if{|a| !a }.length == 0
  end

  def available_to_fill?( county )
    if order == 1 || order == 0
      return true
    end

    if order > 1 && !form_section.nil?
      return form_section.all_cards_fill?( county )
    end
  end
end
