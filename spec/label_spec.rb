require_relative 'spec_helper'

describe 'Testing Label' do
  context 'Creating new Label' do
    new_label = Label.new('track', 'yellow')

    it 'Check if is an instance of Label' do
      expect(new_label).to be_instance_of(Label)
    end

    it "Title of the created label should be 'track'" do
      expect(new_label.title).to eql 'track'
    end

    it "Color of the created label should be 'yellow'" do
      expect(new_label.color).to eql 'yellow'
    end
  end
end
