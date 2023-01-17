require 'securerandom'

class Label
  def initialize(title, color)
    @id = SecureRandom.uuid
    @title = title
    @color = color
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end

  def input(labels)
    puts 'Enter a new label or select an existing one:'
    print '  Enter the title of the label:'
    title = gets.chomp
    if labels.any? { |label| label.title == title }
      puts '  Label found'
      labels.find { |label| label.title == title }
    else
      puts '  Label not found'
      print '  Enter the color of the new label:'
      color = gets.chomp
      Label.new(title, color)
    end
  end
end
