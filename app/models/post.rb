class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :group
  belongs_to :user
end
