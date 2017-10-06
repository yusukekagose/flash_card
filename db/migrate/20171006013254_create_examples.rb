class CreateExamples < ActiveRecord::Migration[5.1]
  def change
    create_table :examples do |t|
      t.text :sentence
      t.text :translation
      t.references :meaning, foreign_key: true

      t.timestamps
    end
  end
end
