module QuestionDecorator
  def link_to_answers
    link_to "Ver respostas", admin_survey_section_question_answers_path( self.section.survey.id, self.section.id, self )
  end

  def html_clear
    return "<div class='cf'>&nbsp;</div>".html_safe if self.clear_question
  end

  def answers_decorated
    @answers_decorated ||= self.answers.map{|a| ActiveDecorator::Decorator.instance.decorate( a ) }
  end

  def answer_field_decorated
    @content = "<div class=\"form-group #{ "multiple" if self.multiple_answer}\">"
    @content += answers_decorated.map{|a| yield(a) }.join
    @content += "</div>"
    return @content.html_safe
  end
end