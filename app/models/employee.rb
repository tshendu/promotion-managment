class Employee < ApplicationRecord

   belongs_to :department
   belongs_to :designation
   belongs_to :rank
   has_many :skill

    #validates employee fields sent from front end.
    validates :email_address, presence:true, uniqueness:true
    validates :first_name, presence: true
    validates :cid_no, presence: true, length: {minimum:10, maximum:13}, uniqueness:true, numericality: true
    validates :rank_id, presence: true

    # Fetch employees with department, designation and its employee rank.
   private
    def self.get_employee
      delegate :deg_name, to: :designation
      delegate :dep_name, to: :department
      delegate :rank_title, to: :rank
      Employee.joins(:department, :designation, :rank)
    end

    # This method will fetch list of promotion which have experience of 4 years and above.
    private
    def self.get_promotion
    delegate :deg_name, to: :designation
     delegate :rank_title, to: :rank
    Employee.joins(:designation, :rank).where("date_of_joining < ?", DateTime.now.ago(4.year))
    end

end