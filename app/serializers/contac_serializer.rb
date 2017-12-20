class ContacSerializer < ActiveModel::Serializer
  attributes :id, :family_name, :given_name, :company, :title, :phone, :email, :website, :address, :customer_id, :additional_info
end
