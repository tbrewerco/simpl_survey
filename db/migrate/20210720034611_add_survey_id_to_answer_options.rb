class AddSurveyIdToAnswerOptions < ActiveRecord::Migration[6.1]
  def change
    add_column :answer_options, :survey_question_id, :integer
  end
end
