class MenuItem < ActiveRecord::Base
  attr_accessible :item_name, :price
  belongs_to :menu
  validates :item_name, presence: true,
  validates :price, presence: true
end