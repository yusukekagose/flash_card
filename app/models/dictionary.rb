class Dictionary < ApplicationRecord
  belongs_to :user
  belongs_to :meaning
end
