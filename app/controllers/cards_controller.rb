class CardsController < ApplicationController
  self.responder = AppResponder
  respond_to :html, :json

  def index
    @collection_devices = CollectionDevicesPresenter.new( :page => params[:page] )
    respond_with( @collection_devices )
  end

  def new
    @collection_devices = CollectionDevicesPresenter.new( :county_code => params[:county_code],
                                                          :survey_id => params[:survey_id],
                                                          :year => params[:year],
                                                          :month => params[:month] )
    respond_with( @collection_devices )
  end

  def edit
    @collection_devices = CollectionDevicesPresenter.build( Card.find( params[:id] ) )
    respond_with( @collection_devices )
  end

  def update
    @card = Card.find( params[:id] )
    @card.update( card_params )
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

  def form_section
    @form_sections_first = FormSection.where( FormSection.arel_table[:order].eq(0) ).all
    @form_sections = FormSection.where( FormSection.arel_table[:order].gt(0) ).all

    @county = County.where( :name => I18n.transliterate( params[:county_code] ).upcase ).first
    @year = params[:year].to_i
    @oficio = OficioPrefeitura.where( county_id: @county.id ).count == 1
    render :partial => "cards/form_section"
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
      params.require(:card).permit( :year, :month, :survey_id, :county_id, card_questions_attributes: [ :id, :question_id, card_answers_attributes: [ :id, :answer_id, :value ]] )
    end

end
