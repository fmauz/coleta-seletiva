FactoryGirl.define do
  factory :answer do
    question
    answer_type
    placeholder "Placeholder"
    help_block "Help Block"
    label_text "Label Text"
  end
end