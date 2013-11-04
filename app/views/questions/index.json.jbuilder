json.array!(@questions) do |question|
  json.extract! question, :section_id, :multiple_answer, :code, :content, :help_block, :css_class
  json.url question_url(question, format: :json)
end
