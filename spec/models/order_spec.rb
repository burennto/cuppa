require 'spec_helper'

describe Order do

  describe 'Associations' do

    it { should belong_to(:person) }
    it { should validate_presence_of(:person) }

    it { should belong_to(:beverage) }
    it { should validate_presence_of(:beverage) }

  end

  describe 'Attributes' do

  end

  describe 'Methods' do
  end

end
