require 'rails_helper'

RSpec.describe Hole, :type => :model do
  let(:hole){ build :hole }

  describe 'Validations' do
    it{ should validate_presence_of :number }
    it{ should validate_numericality_of :number }
    it{ should validate_presence_of :par }
    it{ should validate_numericality_of :par }
  end

  describe 'Associations' do
    it{ should belong_to :course }
  end


  describe '#tees' do
    it 'should be a hash' do
      hole.tees.class.should == Hash
    end
  end
end
