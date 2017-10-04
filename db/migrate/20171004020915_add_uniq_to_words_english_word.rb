class AddUniqToWordsEnglishWord < ActiveRecord::Migration[5.1]
  def change
    add_index :words, :english_word, unique: true
  end
end
