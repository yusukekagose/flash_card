class Dictionary < ApplicationRecord
  belongs_to :user
  belongs_to :meaning

  validates :user, :uniqueness => {:scope => :meaning_id}
end
