class AddAnswerOptionIdToChosenAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :chosen_answers, :answer_options_id, :integer
  end
end
