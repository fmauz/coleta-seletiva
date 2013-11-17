class CountiesController < ApplicationController
  respond_to :json

  def index
    @county = County.where( code: params[:code] ).first
    respond_with( @county )
  end
end
