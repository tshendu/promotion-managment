class EmployeeSkillsController < ApplicationController

  def new
    @employeeskill = EmployeeSkill.new
  end
  # This method will save the employee.
  def create
    @employee_skill = Employee.new(employee_skill_params)
    authorize @employee

    if @employee.save
      flash[:notice] = "New employee is created successfully."
      redirect_to skills_path
    else # Failed. Re-render the page as unsuccessful
    flash[:error] = "Form is invalid"
    redirect_to skills_path
    end
  end

  # This method will permit employee record fields.
  private
  def employee_skill_params
    params.require(:employee_skill).permit(:skills_point)
  end
end