class CreateAnswerOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_options do |t|
      t.integer :answer_numeric
      t.text :answer_text

      t.timestamps
    end
  end
end
