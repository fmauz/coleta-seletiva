class Survey < ActiveRecord::Base
  has_many :cards
  has_many :sections

  default_scope where( disabled: false )

  validates :name,
            :presence => true

  def uniq_year?
    form_type == "Uma vez por ano"
  end

  def uniq_month?
    form_type == "Uma vez por mês"
  end

  def uniq?
    form_type == "Único"
  end

  def available_to_fill?( year, month, county )
    if self.uniq?
      if self.cards.where( :county_id => county.id ).count == 0
        return { :error => false, :message => "" }
      else
        card = self.cards.where( :county_id => county.id ).first
        return { :error => true, :message => "Este formulário já foi preenchido. <a class='btn btn-lg btn-success' href='/cards/#{card.id}'>Ver detalhe</a>" }
      end
    end

    if self.uniq_year?
      if self.cards.where( :county_id => county.id, :year => year ).count == 0
        return { :error => false, :message => "" }
      else
        card = self.cards.where( :county_id => county.id, :year => year ).first
        return { :error => true, :message => "Este formulário já foi preenchido. <a class='btn btn-lg btn-success' href='/cards/#{card.id}'>Ver detalhe</a>" }
      end
    end

    return { :error => false, :message => "" }
  end
end
