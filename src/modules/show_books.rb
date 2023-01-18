module ListBooks
  def list_all_books
    if @books.empty?
      puts 'There\'s no books added yet!'
    elsif @books.length >= 1
      @books.each { |i|
        puts %(Publisher: "#{i['publisher']}" || Author: #{i['author']['first_name']} || Genre: #{i['genre']})
      }
    end
  end
end
