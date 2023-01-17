require_relative 'spec_helper'

describe 'Genre class unit test' do
  before(:each) do
    @genre = Genre.new('Reggaeton')
  end

  context 'New Genre object' do
    it 'Takes one parameter and returns a Genre object' do
      expect(@genre).to be_instance_of(Genre)
    end

    it 'the correct name is Reggaeton' do
      expect(@genre.name).to eq('Reggaeton')
    end

    it 'return a string' do
      expect(@genre.name).to be_kind_of(String)
    end
  end
end
