require 'csv'
namespace :parse_csv do

  desc "Import from excel"
  task flash_card: :environment do
    wcounter = 0
    mcounter = 0
    w_id = 1
    filename = File.join Rails.root, "flash_card.csv"

    CSV.foreach(filename, headers: true, encoding: 'Shift_JIS:UTF-8') do |row|
      english_word = row["english"]
      meaning = row["意味"]
      word = Word.create(english_word: english_word)
      meaning = Meaning.create!(word_id: w_id, meaning: meaning)
      w_id += 1 if meaning.persisted?
      wcounter += 1 if word.persisted?
      mcounter += 1 if meaning.persisted?
    end

    puts "Imported #{wcounter} words"
    puts "Imported #{mcounter} meanings"
  end

end
