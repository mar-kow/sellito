class Post < ApplicationRecord
  # TODO: handle uploading photo
  # lambda / ->
  scope :featured_posts, -> { includes(:categories).order('created_at DESC').limit(12) }
  belongs_to :user
  has_many :post_categories
  has_many :categories, through: :post_categories

  validates :title, :expiration_date, presence: true

  validate :expiration_date_cannot_be_in_the_past

  def expiration_date_cannot_be_in_the_past
    return unless expiration_date && expiration_date < Date.today
    errors.add(:expiration_date, "can't be in the past")
  end
end
