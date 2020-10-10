
require 'rails_helper'
RSpec.describe  EmployeesController, "creating employee param" do
  fixtures :employee

  it "should pass params to menu item" do
    post 'create', :employee => { :first_name => 'Plain' }
    assigns[:employee].name.first_name == 'Plain'
    end
end