class CountiesController < ApplicationController
  respond_to :json

  def index
    @county = County.where( name: I18n.transliterate( params[:code] ).upcase ).first
    respond_with( @county )
  end
end
