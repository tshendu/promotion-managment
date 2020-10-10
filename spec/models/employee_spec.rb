require 'rails_helper'

RSpec.describe Employee, type: :model do
  context 'tests' do
    it 'ensures first name presence' do
      employee = Employee.new(last_name:'last',email_address:'sample@gmail.com',cid_no:333333343333,department_id:1, designation_id:1).save
      expect(employee).to eq(false)
    end

    it 'ensures last name presence' do
      employee = Employee.new(first_name:'first',email_address:'sample@gmail.com').save
      expect(employee).to eq(false)
    end




    it 'should save successfully' do
      employee = Employee.new(first_name:'firsts', last_name:'lasts', email_address:'sample@gmail.com',cid_no: 12345678910,
                              date_of_joining: '2020-01-01',department_id: 1, designation_id: 1, rank_id: 1).save

      expect(employee).to eq(true)
    end
  end
  context  'scope tests' do
  end
end