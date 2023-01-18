require_relative 'spec_helper'

describe 'Testing Item' do
  context 'Creating new Item' do
    item = Item.new('Action', 'Author1', 'Track', '2000-08-28')

    it 'Check if is an instance of Item' do
      expect(item).to be_instance_of(Item)
    end

    it "Author of the created item should be 'Author1'" do
      expect(item.author).to eql 'Author1'
    end

    it 'the genre is Action' do
      expect(item.genre).to eq 'Action'
    end

    it "Published_date of the created item should be '2000-08-28'" do
      expect(item.publish_date).to eql '2000-08-28'
    end
  end
end
