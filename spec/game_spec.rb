require_relative 'spec_helper'

describe 'Testing Game' do
  context 'Creating a new Game for testing' do
    new_game = Game.new(true, '2006-05-06', 'Horror', 'Author1', 'New', '2005-01-01')

    it 'Check if is an instance of Author' do
      expect(new_game).to be_instance_of(Game)
    end

    it "Author of the created game should be 'Author1'" do
      expect(new_game.author).to eql 'Author1'
    end

    it 'Should return true from can_be_archived method' do
      expect(new_game.can_be_archived?).to eql false
    end
  end
end
