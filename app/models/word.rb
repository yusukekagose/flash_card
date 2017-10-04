class Word < ApplicationRecord
  validates :english_word, uniqueness: true
  has_many :meanings, :dependent => :destroy
  has_many :dictionaries
end
