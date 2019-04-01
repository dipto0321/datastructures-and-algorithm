class Player

  attr_reader :cards

  def initialize

    @cards = (1..13).to_a

  end



  def bid(input)

    index = @cards.find_index(input)



    @cards.delete_at(index)

  end



  def score

    @cards.reduce { |a, b| a + b }

  end

end



class Game

  def initialize(player1, player2)

    @player_one = player1



    @player_two = player2



    @face_cards = (1..13).to_a

  end



  def turn(face, p1_bid, p2_bid)

    if p1_bid != p2_bid



      player_one_bid = @player_one.bid(p1_bid)



      player_two_bid = @player_two.bid(p2_bid)



      win_card(face, player_one_bid, player_two_bid)



    end

  end



  def cycle(game_arr)

    face = 1



    game_arr.each do |player_turns|

      turn(face, player_turns[0], player_turns[1])



      face += 1 if player_turns[0] != player_turns[1]

    end

  end



  private



  def win_card(card, p1_bid, p2_bid)

    if p1_bid > p2_bid



      @player_one.cards.push(card)



    elsif p1_bid < p2_bid



      @player_two.cards.push(card)



    end

  end

end



def do_stuff(ar)

  ar.each do |input|

    pairs = []



    player1 = Player.new



    player2 = Player.new



    game = Game.new(player1, player2)



    input.each_slice(2) { |a| pairs.push(a) }



    game.cycle(pairs)



    puts [player1.score, player2.score].join(' ')

  end

end



inputs = [



  '1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 10 10 11 11 12 12 13 13 1',



  '1 2 4 3 5 1 2 6 9 7 10 1 2 11 11 4 13 12 3 10 3 7 12 13 8 12',



  '2 1 3 2 4 3 5 5 6 4 1 5 7 6 8 7 9 8 10 9 11 11 12 12 13 13 1 10 12 11 13 12 5 13',



  '1 2 4 3 5 1 2 6 9 7 8 8 10 1 13 13 12 12 2 11 13 13 12 12 11 4 13 12 3 10 9 7 12 13 8 12'



].map { |input| input.split.map(&:to_i) }



do_stuff(inputs)

