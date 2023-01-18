require_relative '../../data/read_data'
module ListGenre
  def list_all_genres
    if @genres.empty?
      puts 'There\'s no labels added yet!'
    elsif @genres.length >= 1
      @genres.each_with_index { |i, index| puts %(#{index}\) Genre Name: #{i['name']}) }
    end
  end
end
