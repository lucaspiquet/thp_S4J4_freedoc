class Specialty < ApplicationRecord
  has_many :join_specialty_doctors
  has_many :doctors, through: :join_specialty_doctors
end