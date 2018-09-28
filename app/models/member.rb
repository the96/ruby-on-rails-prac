class Member < ApplicationRecord
  has_many :creative_fields
  accepts_nested_attributes_for :creative_fields, allow_destroy: true
  enum align:{topleft: 0, topright: 1, bottomleft: 2, bottomright: 3}
end
