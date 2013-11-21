class Menu < ActiveRecord::Base
  attr_accessible :title
  has_many :items
  validates :title, presence: true, uniqueness: true
end