class Post < ApplicationRecord
  # TODO: handle uploading photos
  belongs_to :user
  validates :title, :expiration_date, presence: true
end
