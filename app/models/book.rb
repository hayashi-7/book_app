class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  acts_as_taggable
  belongs_to_active_hash :category
  belongs_to :user
  has_many :likes, dependent: :destroy
  with_options presence: true do
    validates :title
    validates :price, numericality: { greater_than_or_equal_to: 150, less_than_or_equal_to: 9_999_999 }
    validates :category_id
    validates :user
    validates :author
    validates :review
    validates :image
    validates :description
  end
  validates :category_id, numericality: { other_than: 1 }
  
  def self.category(category)
    if 1 < category.to_i && category.to_i < 19
      Book.where(category_id: category)
      else
      Book.all
    end
  end
  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end
end
