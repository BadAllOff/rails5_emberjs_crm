class Offer < ApplicationRecord
  belongs_to :project
  has_many :tasks
  has_many :notes, as: :topic
  has_and_belongs_to_many :contacts

  enum status: [:active, :accepted, :rejected, :expired]

  validates :name, presence: true
end
