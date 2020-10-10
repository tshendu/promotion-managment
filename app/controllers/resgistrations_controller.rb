class RegistrationsController < Devise::RegistrationsController

  private
   def sign_up_params
     params.require(:user).permit(:department_id, :designation, :name, :email, :password, :password_confirmation,  :status_type)
   end

   def account_update_params
     params.require(:user).permit(:department_id, :designation, :name, :email, :password, :password_confirmation,:current_password, :status_type)
  end
end