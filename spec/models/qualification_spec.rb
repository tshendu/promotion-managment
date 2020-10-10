require 'rails_helper'

RSpec.describe Qualification, type: :model do
  context 'tests' do
    it 'ensures name presence' do
      qualification = Qualification.new().save
      expect(qualification).to eq(false)
    end
    it 'should save successfully' do
      qualification = Qualification.new(q_name: 'T1').save
      expect(qualification).to eq(true)
    end
  end
  context  'scope tests' do
  end
end
