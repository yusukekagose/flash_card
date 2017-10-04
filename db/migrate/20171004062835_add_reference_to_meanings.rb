class AddReferenceToMeanings < ActiveRecord::Migration[5.1]
  def change
    add_reference :meanings, :word, foreign_key: true
  end
end
