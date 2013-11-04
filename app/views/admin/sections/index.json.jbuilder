json.array!(@sections) do |section|
  json.extract! section, :survey_id, :name, :help_block
  json.url section_url(section, format: :json)
end
