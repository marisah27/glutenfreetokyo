class Shop < ApplicationRecord
  belongs_to :user
  has_many :menus, dependent: :destroy
  has_many :prices, dependent: :destroy
  accepts_nested_attributes_for :menus
  accepts_nested_attributes_for :prices
  mount_uploader :img, ImgUploader
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :address, length: { maximum: 100 }
  validates :review, presence: true, length: { maximum: 300 }
  validates :genre, presence: true
  validates :area, presence: true

  enum area: {
    ginza: 0,
    sinbashi: 1,
    shibuya: 2,
    shinjuku: 3,
    ikebukuro: 4,
    Others: 5
  }
  
  enum genre: {
    italian: 0,
    washoku: 1,
    ethnic: 2,
    meet: 3,
    cafe: 4
  }
end
