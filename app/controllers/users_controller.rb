class UsersController < ApplicationController

  # @todo Get count of user log
  def index
    @department= Department.get_department
    @results= User.get_users
    @user_log_count=@results.select(:dep_name, 'COUNT(deg_name) as count').group(:dep_name,:deg_name)
    authorize User
  end

  #this method will search user by userid
  def find_user
    @dd= Department.get_department
    @results= User.get_users_and_posts(params)
    render :index
  end

  #this method will get department by department id.
  def get_department
    @results= User.get_users
    @ddd=@results.where('users.department_id=?', params[:department_id])
    render :index
  end
end

