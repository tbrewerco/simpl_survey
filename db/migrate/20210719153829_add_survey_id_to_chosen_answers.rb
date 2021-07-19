class AddSurveyIdToChosenAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :chosen_answers, :survey_questions_id, :integer
  end
end
