class Item < ActiveRecord::Base
  attr_accessible :name, :price
  belongs_to :menus
  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, uniqueness: true
end
