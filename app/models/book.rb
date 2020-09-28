class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  acts_as_taggable
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to :user
  has_one_attached :image
  with_options presence: true do
    validates :name
    validates :price, numericality: { greater_than_or_equal_to: 150, less_than_or_equal_to: 9_999_999 }
    validates :category_id
    validates :status_id
    validates :user
    validates :author
  end
  validates :category_id, :status_id, numericality: { other_than: 1 }
end
