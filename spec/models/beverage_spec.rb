require 'spec_helper'

describe Beverage do

  let!(:beverage) { Beverage.create!(:name => 'Tea') }

  describe 'Associations' do

    it { should have_many(:orders) }

  end

  describe 'Attributes' do

    it { should validate_presence_of(:name) }

    it { should validate_uniqueness_of(:name).case_insensitive }

  end

  describe 'Methods' do
  end

end
