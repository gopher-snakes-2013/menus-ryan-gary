class Menu < ActiveRecord::Base
  attr_accessible :title
  has_many :menuitems
  validates :title, presence: true, uniqueness: true
end