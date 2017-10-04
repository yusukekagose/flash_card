class CreateDictionaries < ActiveRecord::Migration[5.1]
  def change
    create_table :dictionaries do |t|
      t.references :user, foreign_key: true
      t.references :meaning, foreign_key: true

      t.timestamps
    end
  end
end
