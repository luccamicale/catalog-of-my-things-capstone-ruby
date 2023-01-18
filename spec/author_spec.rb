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

  it 'Item array should starts empty' do
    expect(@author.items).to eq([])
  end
end
