module ControllerResponder
  def to_html
    res = resource.kind_of?(Array) ? resource.last : resource
    if get?
      render
    elsif !res.valid?
      render action: ( post? ? :new : :edit )
    else
      controller.flash[:notice] = I18n.t("flash.actions.#{controller.action_name}.notice", :resource_name => I18n.t("resource.#{res.class.name.downcase}") )
      if controller.params[:add_new] == "true"
        redirect_to controller.url_for({ action: :new }) 
      else
        redirect_to resource
      end
      
    end
  end
end