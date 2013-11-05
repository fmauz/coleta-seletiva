module AnswerDecorator
  def answer_type_collection
    AnswerType.all.collect{|a| [ a.name, a.id ] }
  end
end