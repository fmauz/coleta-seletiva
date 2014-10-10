  class CollectionDevicesPresenter
  attr_accessor :page
  attr_accessor :county
  attr_accessor :county_code
  attr_accessor :survey_id
  attr_accessor :year
  attr_accessor :month
  attr_accessor :card
  attr_accessor :survey
  attr_accessor :query
  attr_accessor :ransack_obj

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
    @ransack_obj.result.order(:county_id).paginate :per_page => 10, :page => ( @page || 1 )
  end

  def self.build( card )
    self.new( 
              survey: card.survey,
              year: card.year,
              month: card.month,
              county: card.county,
              card: card
            )
  end

  def initialize(attributes = {})
    attributes.each{|k,v| self.send("#{k}=", v) }
    @ransack_obj = Card.search( @query )
  end

end