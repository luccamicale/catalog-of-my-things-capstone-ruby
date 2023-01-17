# Interface class
class Interface
  def header
    puts '--------------------------------------------------'
    puts 'Welcome to Catalog of my Things  ͡° ͜ʖ ͡°'
    puts '--------------------------------------------------'
    puts 'Select an option: '
    menu
    puts '--------------------------------------------------'
  end

  def menu
    puts '1 - List all Books'
    puts '2 - List all music albums'
    puts '3 - List of games'
    puts '4 - List of genres'
    puts '5 - List of Labels'
    puts '6 - List all Authors'
    puts '7 - Add a book'
    puts '8 - Add a music albums'
    puts '9 - Add a game'
    puts '0 - Exit'
  end
end
