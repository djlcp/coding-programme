class Chicken < Animal

  def kill
    super
    puts 'I hate chickens'
    die
  end

end