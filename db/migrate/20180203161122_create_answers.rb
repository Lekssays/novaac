class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.string :name
      t.text :content
      t.references :complaint, foreign_key: true

      t.timestamps
    end
  end
end
