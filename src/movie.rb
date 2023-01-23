class Movie < Item
  attr_accessor :silet

  def initialize(silet, *args)
    super(*args)
    @silet = true
  end

  def can_be_archived?
    true if @silet == 'bad'
  end
end
