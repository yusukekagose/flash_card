class Word < ApplicationRecord
  validates :english_word, uniqueness: true 
end
