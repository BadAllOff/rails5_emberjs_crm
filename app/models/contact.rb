class Contact < ApplicationRecord
  belongs_to :company
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :offers

  validates :family_name, :given_name, presence: true
end
