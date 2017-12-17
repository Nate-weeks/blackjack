class Card
  # Your code here - 2 arguments - card number - suit - method for determining face card or ace - export card to hand
  attr_accessor :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def face_card?
    ['J', 'Q', 'K'].include?(@value)
  end

  def ace?
    ['A'].include?(@value)
  end
end
