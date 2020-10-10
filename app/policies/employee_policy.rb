class EmployeePolicy < ApplicationPolicy

  attr_reader :user, :employee

  def initialize(user, employee)
    @user=user
    @employee=employee

  end

  def index?
    @user.admin?
  end
  def new?
    @user.admin?
  end

  def show?
    true
  end

  def update?
    @user.admin?
  end

  def create?
    @user.admin?
  end

  def destroy?
    return false if @user == @employee
    @user.admin?
  end

end