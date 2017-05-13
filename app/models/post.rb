class Post < ApplicationRecord
  # TODO: handle uploading photos
  belongs_to :user
  validates :title, :expiration_date, presence: true

  validate :expiration_date_cannot_be_in_the_past

  def expiration_date_cannot_be_in_the_past
    return unless expiration_date && expiration_date < Date.today
    errors.add(:expiration_date, "can't be in the past")
  end
end
