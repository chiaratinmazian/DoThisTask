class List < ApplicationRecord
  belongs_to :user
  has_many :tasks

  validates :title, length: { minimum: 1 }
end
