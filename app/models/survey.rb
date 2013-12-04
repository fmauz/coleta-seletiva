class Survey < ActiveRecord::Base
  has_many :cards, :dependent => :destroy
  has_many :sections, :dependent => :destroy

  belongs_to :form_section
  
  default_scope { where( disabled: false ) }

  validates :name,
            :form_section,
            :presence => true

  def liberado?
    form_type == "Liberado"
  end

  def uniq_year?
    form_type == "Uma vez por ano"
  end

  def uniq_month?
    form_type == "Uma vez por mês"
  end

  def uniq?
    form_type == "Único"
  end



  def enable_to_fill?( county, year )
    if self.uniq?
      return self.cards.where( :county_id => county.id ).count == 0
    end

    if uniq_month?
      return true
    end

    if uniq_year?
      return self.cards.where( :county_id => county.id, :year => year ).count == 0
    end

    if liberado?
      return true
    end

    if uniq_month?
      return self.cards.where( :county_id => county.id, :year => year ).count < 12
    end
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

    if uniq_month?
      if self.cards.where( :county_id => county.id, :year => year, :month => month ).count == 0
        return { :error => false, :message => "" }
      else
        card = self.cards.where( :county_id => county.id, :year => year, :month => month ).first
        return { :error => true, :message => "Este formulário já foi preenchido. <a class='btn btn-lg btn-success' href='/cards/#{card.id}'>Ver detalhe</a>" }
      end
    end

    return { :error => false, :message => "" }
  end
end
