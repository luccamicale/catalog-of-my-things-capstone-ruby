module ListSources
  def list_all_sources
    if @sources.empty?
      puts 'There\'s no sources added yet!'
    elsif @sources.length >= 1
      @sources.each_with_index { |i, index| puts %(#{index}\) Sources Name: #{i['name']}) }
    end
  end
end
