# class Player
# does something cool
# I would like to recommend using it like this

class Player
  attr_reader :elo_rating, :name

  def initialize(name: 'Bob', elo_rating: 0)
    @name = name
    @elo_rating = elo_rating
  end

  def inspect
    "The players name is #{name} and their rating is #{elo_rating}"
  end

  class << self
    def player_with_input
      name, rating = request_input
      elo_rating = if rating.zero?
                     1200
                   else
                     rating
                   end
      new name: name, elo_rating: elo_rating
    end

    private

    def request_input
      puts 'Creating player'
      puts 'Give this player a name:'
      name = gets.chomp

      puts 'What is this players elo rating? If unknown, enter 0 (will default to 1200)'
      rating = gets.chomp.to_i
      [name, rating]
    end
  end
end