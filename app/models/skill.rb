class Skill < ApplicationRecord
  belongs_to :employee

  validates :skills_point, presence: true, length: {minimum:0, maximum:2},  numericality: true
end
