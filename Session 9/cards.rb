class Deck

  SUITS = ['hearts', 'diamonds', 'clubs', 'spades']
  FACE_VALUES = %w(2 3 4 5 6 7 8 9 T J Q K A)

  def initialize
    create_cards
    shuffle!
  end

  def deal(number)

    cards_chosen = @cards.pop(number)

    if @cards.count == 0
      puts 'None left!'
    elsif number > cards_chosen.count
      puts "There weren't enough cards. I only dealt #{cards_chosen.count}"
    end

    cards_chosen

  end

private

  def create_cards
    @cards = []
    SUITS.each do |suit|
      FACE_VALUES.each do |face_value|
        @cards << Card.new(suit: suit,face_value:face_value)
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end

end

class Card

  attr_reader :suit, :face_value, :actual_value

  def initialize(suit:,face_value:)
    @suit = suit
    @face_value = face_value
    @actual_value = VALUES[face_value]
  end

  VALUES = {
    "2" => 1,
    "3" => 2,
    "4" => 3,
    "5" => 4,
    "6" => 5,
    "7" => 6,
    "8" => 7,
    "9" => 8,
    "T" => 9,
    "J" => 10,
    "Q" => 11,
    "K" => 12,
    "A" => 13,
  }

end