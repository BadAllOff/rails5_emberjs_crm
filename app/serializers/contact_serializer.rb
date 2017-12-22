class ContactSerializer < ActiveModel::Serializer
  attributes :id, :family_name, :given_name, :company_id, :title, :phone, :email, :website, :address, :customer_id, :additional_info
  belongs_to :company
  has_many :projects
  has_many :notes
end
