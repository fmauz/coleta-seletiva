module CardDecorator

  def sections
    self.survey.sections.map{|section| ActiveDecorator::Decorator.instance.decorate( section ) }
  end

end