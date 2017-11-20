class Dictionary < ApplicationRecord
  belongs_to :user
  belongs_to :meaning

  validates :meaning_id, :uniqueness => {:scope => :user_id}

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
