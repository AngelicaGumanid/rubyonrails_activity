class Product < ApplicationRecord
  validates :name, presence: true
  validates :content, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :released_at, presence: true
  validates :discount, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }, allow_nil: true
  has_one_attached :image
  validates :image, presence: true
  validate :image_validation

  private

  def image_validation
    if image.attached?
      unless image.content_type.in?(%w[image/jpeg image/png image/gif])
        errors.add(:image, 'must be a JPEG, PNG, or GIF')
      end
      #   if image.byte_size > 1.megabyte
      #     errors.add(:image, 'size must be less than 1 MB')
      #   end
      # else
      #   errors.add(:image, 'must be attached')
    end
  end
end