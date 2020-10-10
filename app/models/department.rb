class Department < ApplicationRecord

  has_many :designations
  has_many :employees

  validates :dep_name, presence: true

  #this method will get departments join with employee and designation.
  def self.get_department
    Department.left_joins(:employees).left_joins(:designations)
  end
end
