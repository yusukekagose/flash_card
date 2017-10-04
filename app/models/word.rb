class Word < ApplicationRecord
  validates :english_word, uniqueness: true
  has_many :meanings
end
