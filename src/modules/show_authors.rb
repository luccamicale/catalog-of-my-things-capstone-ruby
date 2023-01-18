module ListAuthors
  def list_all_authors
    if @authors.empty?
      puts 'There\'s no authors added yet!'
    elsif @authors.length >= 1
      @authors.each_with_index { |i, index|
        puts %(#{index}\) First Name: #{i['first_name']} || Last Name: #{i['last_name']})
      }
    end
  end
end
