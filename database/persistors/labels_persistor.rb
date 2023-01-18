require 'json'
require './src/classes/label'

module LabelsPersistor
  SOURCE = './database/data/labels.json'.freeze

  def self.read_from_file
    return [] unless File.exist?(SOURCE)

    ruby_labels = JSON.parse(File.read(SOURCE))
    ruby_labels.map { |label| json_to_ruby(label) }
  end

  def self.write_to_file(labels)
    json_labels = labels.map { |label| ruby_to_json(label) }
    File.write(SOURCE, JSON.pretty_generate(json_labels))
  end

  def self.ruby_to_json(label)
    {
      'id' => label.id,
      'title' => label.title,
      'color' => label.color,
      'items' => []
    }
  end

  def self.json_to_ruby(label)
    new_label = Label.new(label['title'], label['color'])
    new_label.id = label['id']
    new_label
  end
end
