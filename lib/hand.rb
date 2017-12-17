
class Hand
attr_accessor :hand

  def initialize(cards)

    @hand = cards

  end

  def score
    score = 0
    @hand.each do |card|
      if card.face_card? == true
        score += 10
      elsif card.ace? ==  true && score <= 10
        score += 11
      elsif card.ace? == true && score > 10
        score += 1
      else
        score += card.value.to_i
      end
    end
    score
  end
end
