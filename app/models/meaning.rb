class Meaning < ApplicationRecord
  belongs_to :word
  has_many :dictionaries
  has_many :examples, :dependent => :destroy
  validates_presence_of :meaning
  validates :meaning, :uniqueness => {:scope => :word_id}

end
