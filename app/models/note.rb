class Note < ApplicationRecord
  self.inheritance_column = :type
  belongs_to :contact, optional: true
  belongs_to :topic, polymorphic: true, optional: true
end
