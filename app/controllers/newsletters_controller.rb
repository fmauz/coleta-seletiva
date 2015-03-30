class NewslettersController < ApplicationController
  skip_filter :authenticate_user!
  def create
    @newsletter = Newsletter.new( newsletter_params )
    if @newsletter.save
      render json: @newsletter, status: 200
    else
      render json: @newsletter.errors, status: 422
    end
  end

  def newsletter_params
    params.require(:newsletter).permit(:name, :profissao, :instituicao, :email)
  end

end