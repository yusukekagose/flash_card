class Dictionary < ApplicationRecord
  belongs_to :user
  belongs_to :meaning

  validates :meaning_id, :uniqueness => {:scope => :user_id}

end
