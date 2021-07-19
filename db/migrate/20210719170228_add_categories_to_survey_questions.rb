class AddCategoriesToSurveyQuestions < ActiveRecord::Migration[6.1]
  def change
    add_column :survey_questions, :categories, :string
  end
end
