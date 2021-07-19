class RemoveAnswerBooleanFromAnswerOptions < ActiveRecord::Migration[6.1]
  def up
    remove_column :answer_options, :answer_boolean, :boolean
  end
end
