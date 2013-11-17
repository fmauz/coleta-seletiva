module SectionDecorator
  def link_to_questions
    link_to "Ver Perguntas", admin_survey_section_questions_path( self.survey_id, self )
  end

  def title
    helpBlock = ( help_block.blank? ? "" : "<small>#{help_block}</small>" )
    "<div class='cf cb section-question'><h3>#{ self.name } #{helpBlock}</h3></div>".html_safe
  end

  def questions_decorated
    self.questions.map{|question| ActiveDecorator::Decorator.instance.decorate( question ) }
  end
  
end