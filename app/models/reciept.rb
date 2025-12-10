class Reciept < ApplicationRecord
  has_many :lineitems, dependent: :destroy
  accepts_nested_attributes_for :lineitems
end
