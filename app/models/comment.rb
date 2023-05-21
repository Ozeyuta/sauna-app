class Comment < ApplicationRecord
  belongs_to :proto
  belongs_to :user
end
