class Like < ApplicationRecord
  belongs_to :user
  belongs_to :example

  validates :example_id, :uniqueness => {:scope => :user_id}
end
