class Animal

  attr_accessor :name, :colour
  attr_reader :number_of_legs, :gender

  def initialize(args={})
    @name = args[:name]
    @colour = args[:colour] || 'brown'
    @gender = args[:gender]
    @number_of_legs = args[:number_of_legs]
  end

  def eat
    puts 'nom nom nom'
  end

  def sleep(hours)
    (1..hours).each do |hour|
      puts 'sleeping'
    end

    if hours > 3
      die
    end

  end

private

  def die
    puts 'oh no a meteorite!'
  end

end

