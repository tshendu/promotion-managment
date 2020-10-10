class Qualification < ApplicationRecord
  has_and_belongs_to_many :ranks
  validates :q_name, presence: true
end
