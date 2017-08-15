class GameConst

REEL = Array.new(10, "coin") + Array.new(9, "orange") + Array.new(8, "plum") + Array.new(7, "horseshoe") + Array.new(6, "7") + Array.new(5, "cherry") + Array.new(4, "bomb") + Array.new(3, "bell") + Array.new(2, "diamond") + Array.new(1, "bar")

PAYOUT = {
   "coin" => 1,
   "orange" => 2, 
   "plum" => 3,
   "horseshoe" => 4,
   "7" => 5,
   "cherry" => 6,
   "bomb" => 7,
   "bell" => 8,
   "diamond" => 9,
   "bar" => 10
}

end

class User

  def initialize
   @name = ""
   @email = ""
   @coin_total = 0
   puts "You do not have any coins to play, to collect 5 free coins, please login with your name and email address:"
   create
  end

  def create(name, email)
   @name = gets.chomp
   @email = gets.chomp
   login
  end

  def login(name, email, coin_total)
   if create @name.include?("") && @email.include?("@")
   then @@coin_total += 5
   welcome
  else
   puts "Invalid Username and Email"
   create
  end

  def welcome
   puts "Hello #{name}, you now have #{coin_total} free coins! To begin playing, please insert a coin and pull the handle"
  end

end

class Machine < User

  def initialize()
   @coin_total = 0
   @reel = GameConst::REEL
   @pull_handle = pull_handle
  end

  def play
   coin_play = coin_total -1
   Machine.handle
   Machine.spin
  end

  def handle
   puts "Press any key to pull the handle"
   gets
  end

  def spin
   dial_one = @reel.sample
   dial_two = @reel.sample
   dial_three = @reel.sample
  end

#  def logic
#   if dial_one == dial_two == dial_three
#    win
#   else
#    lose
#    exit(0)
#   end
#end

end

class Win

  def initialize(coin_total, payout)
  @coin_total = coin_total
  @payout = GameConst::PAYOUT
  end

  def logic
  @payout.each do |k, v|


  end
  

