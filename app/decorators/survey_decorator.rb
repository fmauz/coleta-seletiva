module SurveyDecorator
  def link_to_sections
    link_to "Ver Seções", admin_survey_sections_url( self )
  end
end