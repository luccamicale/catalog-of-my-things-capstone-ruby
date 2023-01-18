module ListGames
  def list_all_games
    if @games.empty?
      puts 'There\'s no games added yet!'
    elsif @games.length >= 1
      @games.each { |i| puts %(Genre: "#{i['genre']}" || Author: #{i['author']} || Multiplayer: #{i['multiplayer']}) }
    end
  end
end
