class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!, unless: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
    cards_path
  end

  def current_person
    current_user.person
  end
end
