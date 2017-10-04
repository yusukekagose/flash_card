class Meaning < ApplicationRecord
  belongs_to :word

  validates :meaning, :uniqueness => {:scope => :word_id}
end
