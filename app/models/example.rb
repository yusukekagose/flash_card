class Example < ApplicationRecord
  belongs_to :meaning
  belongs_to :user
  has_many :likes, :dependent => :destroy
end
