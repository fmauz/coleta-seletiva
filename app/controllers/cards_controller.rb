class CardsController < ApplicationController
  self.responder = AppResponder
  respond_to :html, :json

  def index
    @counties = County.all
    @surveys = Survey.all
    @cards = ( current_user.is_dev? ? Card.all : current_person.cards )
    @cards = @cards.paginate :per_page => 10, :page => params[:page]
  end

  def new
    @card = Card.new
    @card.county = County.where( name: I18n.transliterate( params[:county_code] ).upcase ).first
    @card.survey = Survey.find( params[:survey_id] )
    @card.year = params[:year]
    respond_with( @card )
  end

  def edit
    @card = Card.find( params[:id] )
    respond_with( @card )
  end

  def show
    @card = Card.find( params[:id] )
    respond_with( @card )
  end

  def create
    @card = Card.new( card_params )
    @card.person = current_person
    @card.save
    respond_with( @card )
  end

  def destroy
    @card = Card.find( params[:id] )
    @card.destroy
    respond_with( @card )
  end

  def verify
    year = params[:year].to_i
    month = params[:month].to_i
    
    county = County.where( :name => I18n.transliterate( params[:county_code] ).upcase ).first
    survey = Survey.find( params[:survey_id].to_i )

    
    render( :json => survey.available_to_fill?( year, month, county ) )
  end

  private
    def card_params
      params.require(:card).permit( :year, :month, :survey_id, :county_id, card_questions_attributes: [ :question_id, card_answers_attributes: [ :answer_id, :value ]] )
    end

end
