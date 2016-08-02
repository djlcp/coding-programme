class Animal

  attr_accessor :legs, :name
  attr_reader :eyes

  def initialize(name:, eyes: 2, legs: 2)
    @name = name
    @eyes = eyes
    @legs = legs
  end

  def eat
    puts 'nom nom nom'
  end

  def blind?
    if @eyes == 0
      true
    else
      false
    end
  end

  def kill
    puts 'I only kill dinosaurs'
    die if @name == 'dino'
  end

private

  def die
    puts 'oh no a meteorite'
  end

end
