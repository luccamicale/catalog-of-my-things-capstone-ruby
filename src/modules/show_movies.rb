module ListMovies
  def list_all_movies
    if @movies.empty?
      puts puts 'There\'s no books added yet!'
    elsif @movies.length >= 1
      @movies.each { |i|
        puts %(silet?: #{i['silet']} || Author: #{i['author']} || Genre: #{i['genre']})
      }
    end
  end
end
