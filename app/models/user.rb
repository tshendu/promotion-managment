class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # belongs_to :department
  # belongs_to :designation


  private
  def self.get_users
    # delegate :deg_name, to: :designation
    # delegate :dep_name, to: :department

  end

end
