module QuestionDecorator
  def link_to_answers
    link_to "Ver respostas", admin_survey_section_question_answers_path( self.section.survey.id, self.section.id, self )
  end
end