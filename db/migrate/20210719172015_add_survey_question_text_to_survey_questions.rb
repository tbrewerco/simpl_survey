class AddSurveyQuestionTextToSurveyQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :survey_questions, :survey_question_text, :text
  end
end
