require_relative 'spec_helper'

describe Author do
  before :each do
    @author = Author.new('Johnson', 'Areola')
  end

  describe '#new' do
    it 'creates an instance of the author class' do
      @author.should(be_an_instance_of(Author))
    end
  end

  it 'throws an argument error when parameters are less than or greater than is expected' do
    -> { Author.new 'Harry Potter' }.should raise_error ArgumentError
  end

  describe 'tests for methods in author class' do
    it 'should add an item' do
      item = Item.new('2022-05-09')
      @author.add_item(item)
      expect(@author.items.length).to eql 1
    end
  end
end
