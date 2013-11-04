json.array!(@answers) do |answer|
  json.extract! answer, :answer_type_id, :placeholder, :label_text, :help_block
  json.url answer_url(answer, format: :json)
end
