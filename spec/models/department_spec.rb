require 'rails_helper'

RSpec.describe Department, type: :model do
  context 'tests' do
    it 'ensures department name presence' do
      department = Department.new(head:1).save
      expect(department).to eq(false)
    end

    it 'should save successfully' do
      department = Department.new(dep_name:'departmentname').save
      expect(department).to eq(true)
    end
  end
  context  'scope tests' do
  end
end