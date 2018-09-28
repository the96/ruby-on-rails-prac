class Member < ApplicationRecord
  has_many :creative_fields
  accepts_nested_attributes_for :creative_fields, allow_destroy: true
end
