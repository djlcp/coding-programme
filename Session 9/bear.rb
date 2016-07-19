class Bear < Animal

  def initialize(args={})
    super
    @number_of_legs = 4
  end

  def sleep
    die
  end

end