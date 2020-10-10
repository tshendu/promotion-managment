require 'rails_helper'

RSpec.describe Rank, type: :model do
  context 'tests' do
    it 'ensures validation presence' do
      rank = Rank.new(rank_title:'rank').save
      expect(rank).to eq(false)
    end
    it 'should save successfully' do
      rank =Rank.new(rank_title: "T1", level: 10,salary: 1000, is_active: false, requirement: nil, qualification_id: 1)
       rank.save
      expect(rank).to eq(true)
    end
  end
  context  'scope tests' do
  end
end
