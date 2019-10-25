# A game will consist of two players, one winner and one loser, and a score
class Game
  attr_reader :player_1, :player_2, :score_1, :score_2
  def match
    if score_1 > score_2
      rating_change(player_1, player_2)
    elsif score_2 > score_1
      rating_change(player_2, player_1)
    elsif score_1 == score_2
      puts 'draw means no change'
    end
  end

  def rating_change(winner, loser)
    puts "ha ha, #{loser.name} lost to  #{winner.name}"
  end
end