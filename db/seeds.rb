# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do 
    SurveyQuestion.create(
        survey_question_text: Faker::Lorem.question,
        categories: Faker::Lorem.word
    )
end


AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 1}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 1}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 2}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 2}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 3}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 3}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 4}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 4}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 5}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 5}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 6}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 6}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 7}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 7}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 8}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 8}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 9}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 9}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 10}])
AnswerOption.create([{answer_text: Faker::Lorem.paragraph, survey_questions_id: 10}])