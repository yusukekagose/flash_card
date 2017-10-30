class Example < ApplicationRecord
  belongs_to :meaning
  has_many :likes, :dependent => :destroy
end
