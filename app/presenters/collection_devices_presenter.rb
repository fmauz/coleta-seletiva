class CollectionDevicesPresenter
  attr_accessor :page
  attr_accessor :county_code
  attr_accessor :survey_id
  attr_accessor :year
  attr_accessor :month

  delegate :name, :to => :survey

  def paginate( options )
    @cards = cards.paginate( options )
  end

  def card
    if @card.nil?
      @card = Card.new
      @card.county = county
      @card.survey = survey
      @card.year = @year
      @card.month = @month if @card.survey.uniq_month?
    end
    
    return ActiveDecorator::Decorator.instance.decorate( @card )
  end

  def county
    @county ||= County.where( name: I18n.transliterate( @county_code ).upcase ).first
  end

  def survey
    @survey ||= Survey.find( @survey_id )
  end

  def counties
    @counties ||= County.all
  end

  def surveys
    @surveys ||= Survey.all
  end

  def cards
    @cards ||= Card.paginate :per_page => 10, :page => ( @page || 1 )
  end

  def initialize(attributes = {})
    attributes.each{|k,v| self.send("#{k}=", v) }
  end

end