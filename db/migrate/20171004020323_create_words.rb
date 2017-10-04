class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :english_word

      t.timestamps
    end
  end
end
