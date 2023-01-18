require_relative 'spec_helper'

describe Label do
  label = Label.new('Favorites', 'red')

  context 'check if label is added correctly' do
    it 'should be able to add label' do
      expect(label.title).to eq('Favorites')
      expect(label.color).to eq('red')
    end
  end

  context 'check if label is added to item correctly' do
    it 'should be able to add label to item' do
      item = Item.new('2022-05-09')
      label.add_item(item)
      expect(label.items).to include(item)
    end
  end
end
