class Bill < ApplicationRecord
  belongs_to :insurance
  has_many :cpt
  has_many :icd
end