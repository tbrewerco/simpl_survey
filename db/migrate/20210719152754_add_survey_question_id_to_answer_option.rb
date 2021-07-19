class AddSurveyQuestionIdToAnswerOption < ActiveRecord::Migration[6.1]
  def change
    add_column :answer_options, :survey_questions_id, :integer
  end
end
