class DashboardsController < ApplicationController
  # this method will redirect to dashboard page and get list of dashboard.
  def index
    @employee= Employee.count(:id)

    @department= Department.all

    @rank =Rank.count(:id)

    @promotion = Employee.all.where("date_of_joining < ?", DateTime.now.ago(4.year))


  end

end
