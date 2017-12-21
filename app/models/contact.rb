class Contact < ApplicationRecord
  belongs_to :company

  validates :family_name, :given_name, presence: true
end
