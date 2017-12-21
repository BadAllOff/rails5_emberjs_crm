class ContactSerializer < ActiveModel::Serializer
  belongs_to :company
  attributes :id, :family_name, :given_name, :company_id, :title, :phone, :email, :website, :address, :customer_id, :additional_info
end
