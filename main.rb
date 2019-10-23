class Player
  def initialize
    puts "Creating player"
    puts "Give this player a name:"
    @name = gets.chomp
    puts "What is this players elo rating? If unknown, enter 0 (will default to 1200)"
    rating = gets.chomp
    if rating == 0
      @elo_rating = 1200
    else
      @elo_rating = rating
    end
  end

  def initialize (name, elo_rating)
    @name = name
    @elo_rating = elo_rating
  end
end



p1 = Player.new("Bob", 1200)