reel = Array.new(10, "coin") + Array.new(9, "orange") + Array.new(8, "plum") + Array.new(7, "horseshoe") + Array.new(6, "7") + Array.new(5, "cherry") + Array.new(4, "bomb") + Array.new(3, "bell") + Array.new(2, "diamond") + Array.new(1, "bar")


  def spin(reel)
   dial_one = reel.sample
   dial_two = reel.sample
   dial_three = reel.sample

   puts dial_one
   puts dial_two
   puts dial_three
  end


  def power_on
   start_coins = 5
   puts "Press any key to insert a coin and begin play"
   gets.chomp
   coin_play = 1
   coin_total = start_coins - coin_play
   puts "You now have #{coin_total} coins"
  end

  def handle
   puts "Press any key to pull the handle"
   gets.chomp
  end

  def play
   power_on
   handle
   spin
  end

