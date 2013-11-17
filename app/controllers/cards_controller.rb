class CardsController < ApplicationController
  self.responder = AppResponder
  respond_to :html

  def index
    @counties = County.all
    @surveys = Survey.all
  end

  def new
    @card = Card.new
    @card.county = County.where(code: params[:county_code] ).first
    @card.survey = Survey.find( params[:survey_id] )
    @card.year = params[:year]
    respond_with( @card )
  end

  def show
    @card = Card.find( params[:id] )
    respond_with( @card )
  end

  def create
    @card = Card.new( card_params )
    @card.person = Person.first
    @card.save
    respond_with( @card )
  end

  private
    def card_params
      params.require(:card).permit( :year, :survey_id, :county_id, card_questions_attributes: [ :question_id, card_answers_attributes: [ :answer_id, :value ]] )
    end

end
