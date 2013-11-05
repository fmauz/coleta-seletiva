class Admin::AdminController < ApplicationController
  # before_filter :authenticate_user!
  self.responder = AppResponder
end