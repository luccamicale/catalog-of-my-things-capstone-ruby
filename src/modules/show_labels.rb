require_relative '../../data/read_data'
module ListLabels
  def list_all_labels
    if @labels.empty?
      puts 'There\'s no labels added yet!'
    elsif @labels.length >= 1
      @labels.each_with_index { |i, index| puts %(#{index}\) Title: "#{i['title']}" || Color: #{i['color']}) }
    end
  end
end
