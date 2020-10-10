class EmployeesController < ApplicationController
  before_action :authenticate_user!, except: :index;

  # This method will redirect to index page and get list of active employees.
  def index
    @department= Department.get_department
    @employee= Employee.get_employee
    authorize @employee
    # require 'pry'; binding.pry
  end

  # This method will create new employee object to save new information.
  def new
    @employee= Employee.new
    authorize @employee
  end

  # This method will show employee from employee id.
  def show
    @employee= Employee.find(params[:id])
    @employee = Employee.all.where(":department_id=?",params)
    authorize @employee
  end


  # This method will save the employee.
  def create
    @employee = Employee.new(employee_params)
    authorize @employee
    if @employee.save
      flash[:notice] = "New employee is created successfully."
      redirect_to employees_path
    else # Failed. Re-render the page as unsuccessful
      flash[:error] = "Form is invalid"
    render 'new'
    end
  end

  # This method will get employee information to edit.
  def edit
    @employee = Employee.find(params[:id])
    authorize @employee
  end

  # This method will update employee from employee edit screen.
  def update
    @employee = Employee.find(params[:id])
    authorize @employee
    if @employee.update(employee_params)
      flash[:notice] = "Employee edited successfully."
      redirect_to employees_path
    else
      flash[:error] = "Form is invalid"
      render :edit
    end
  end

  # this method will delete the employee from employee list screen.
  def destroy
    @employee = Employee.find(params[:id])
  authorize @employee

    if @employee.destroy
      flash[:notice] = "Employee deleted successfully."
    else
      flash[:error] = "Couldn't delete the selected employee"
    end
    redirect_to employees_path;
  end

  # This method will permit employee record fields.
  private
  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email_address, :cid_no, :date_of_joining,
                                     :designation_id, :department_id, :rank_id)
  end
end
