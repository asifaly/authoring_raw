class Book < ActiveRecord::Base
  validates :title, presence: true
  has_many :chapters
end
