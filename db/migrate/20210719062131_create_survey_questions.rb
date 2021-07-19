class CreateSurveyQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :survey_questions do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
