class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_many :images, as: :imageable, dependent: :destroy
  accepts_nested_attributes_for :images

  validates :title, presence: true,
                    length: { minimum: 5 }
end
