# require 'spec_helper'
#
# describe "A user" do
#
#   def setup
#     @user = User.create!(user_attributes(email: "test@test.com"))
#     logout(@user)
#   end
#
#   before(:each) do
#     setup
#   end
#
#   it "should be redirected going to following path when not logged in" do
#     visit root_path(@user)
#     expect(current_path).to eq(root_url)
#   end
#
#   it "should be redirected when go to followers path when not logged in" do
#     visit root_path(@user)
#     expect(current_path).to eq(root_url)
#   end
# end