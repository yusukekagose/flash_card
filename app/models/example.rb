class Example < ApplicationRecord
  belongs_to :meaning
  has_many :likes
end
