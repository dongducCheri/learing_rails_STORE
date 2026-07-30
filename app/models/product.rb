class Product < ApplicationRecord
  has_many :subscribers, dependent: :destroy
  #dependent: :destroy -> neu 1 san pham bi xoa, tat ca subscriber bi xoa theo
  has_one_attached :featured_image
  has_rich_text :description
  validates :name, presence: true
  validates :inventory_count, numericality: {greater_than_or_equal_to: 0}
end
