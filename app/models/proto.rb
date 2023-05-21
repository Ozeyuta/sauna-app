class Proto < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :sauna
  belongs_to :cold_bath
  belongs_to :loury
  belongs_to :auto_loury
  belongs_to :self_loury
  belongs_to :outside
  belongs_to :invigorate
  belongs_to :water

  belongs_to :user
  has_one_attached :image
  has_many :comments
end
