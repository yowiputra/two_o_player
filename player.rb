class Player
  attr_reader :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def decrease_life
    @lives = @lives - 1
  end

end
