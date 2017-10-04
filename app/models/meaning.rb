class Meaning < ApplicationRecord
  belongs_to :word

  validates_presence_of :meaning

  validates :meaning, :uniqueness => {:scope => :word_id}
end
