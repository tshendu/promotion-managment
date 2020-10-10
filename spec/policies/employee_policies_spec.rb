# require 'rails_helper'
#
# describe EmployeePolicy do
#   subject {described_class}
#
#   context  "fo a visitor" do
#     let (:member) {nil}
#     let (:employee) {FactoryGirl.create(:profile)}
#
#     permissions :index?, :show?, :new?, :edit?, :create?, :update?, :destroy? do
#       expect(subject).not_to permit(member, employee)
#     end
#   end
#
#   end
# end