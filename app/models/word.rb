class Word < ApplicationRecord
  validates :english_word, uniqueness: true
  has_many :meanings, :dependent => :destroy

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << csv_column_names
      all.each do |dictionary|
        csv << dictionary.csv_column_values
      end
    end
  end

  def self.csv_column_names
    ["単語","意味"]
  end

  def csv_column_values
    [meaning.word.english_word, meaning.meaning]
  end

end
