module SectionDecorator
  def link_to_questions
    link_to "Ver Perguntas", admin_survey_section_questions_path( self.survey_id, self )
  end
end