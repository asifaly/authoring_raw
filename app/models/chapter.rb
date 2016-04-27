class Chapter < ActiveRecord::Base
  belongs_to :book
  validates :title, presence: true
  has_many :sections
end
