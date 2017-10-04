class CreateMeanings < ActiveRecord::Migration[5.1]
  def change
    create_table :meanings do |t|
      t.text :meaning

      t.timestamps
    end
  end
end
