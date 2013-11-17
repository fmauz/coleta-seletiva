module CardDecorator

  def sections_decorated
    self.survey.sections.map{|section| ActiveDecorator::Decorator.instance.decorate( section ) }
  end

end