class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title
      t.references :survey, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
