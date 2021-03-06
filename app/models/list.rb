class List < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy

  validates :title, length: { minimum: 1 }

  DOMAIN = %(Job Personal Else)
end
