module ApplicationHelper
  def button_to_new( path )
    content_tag :div, class: "cf" do
      content_tag :div, class: "btn-group pull-right margin-bottom" do
        link_to I18n.t("resource.buttons.new"), path, class: "btn btn-success"
      end
    end
  end

  def flash_notice_render
    content_tag :div do 
      (
        ( flash[:notice].blank? ? "" : render_flash_notice ) + 
        ( flash[:alert].blank? ? "" : render_flash_alert )
      ).html_safe
    end
  end

  def render_flash_notice
    content_tag(:div, class: "alert alert-warning") do
      flash[:notice]
    end
  end

  def render_flash_alert
    content_tag(:div, class: "alert alert-danger") do
      flash[:alert]
    end
  end

  def empty_array_message( array )
    if array.empty?
      content_tag :div, class: "alert alert-warning" do
        I18n.t("resource.messages.empty").html_safe
      end
    end
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)", class: "glyphicon glyphicon-remove-circle add-remove-icon")
  end
  
  def link_to_add_fields(name, f, association, options)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")", options)
  end

end