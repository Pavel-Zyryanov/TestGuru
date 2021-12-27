class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :question, null: false
      t.references :test, foreing_key: true

      t.timestamps
    end
  end
end
