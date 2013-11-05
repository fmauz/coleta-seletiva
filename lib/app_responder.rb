class AppResponder < ActionController::Responder
  include ControllerResponder
  include Responders::HttpCacheResponder
end