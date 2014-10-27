json.id @card.id
json.year @card.year
json.month @card.month
json.card_questions @card.card_questions do |card_question|
  json.question do
    json.id card_question.question.id
    json.code card_question.question.code
  end 
  json.answers card_question.card_answers do |card_answers|
    json.answer_id card_answers.answer.id
    json.value card_answers.value
  end
end