require_relative 'spec_helper'

describe Game do
  before :each do
    @game = Game.new('2020-09-05', 'yes', '2021-01-01')
  end

  describe '#new' do
    it 'creates an instance of the game class' do
      @game.should(be_an_instance_of(Game))
    end
  end

  it 'throws an argument error when parameters are less than or greater than is expected' do
    -> { Game.new '2001-06-09' }.should raise_error ArgumentError
  end

  describe 'tests for methods in game class' do
    it 'should show if a game can be archieved or not' do
      expect(@game.can_be_archived?).to eql false
    end
  end
end
