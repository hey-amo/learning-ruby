# poker_dice.rb

HANDS = [
  ["Five of a kind", 7],
  ["Four of a kind", 6],
  ["Full house", 5],
  ["Straight", 4],
  ["Three of a kind", 3],
  ["Two pairs", 2],
  ["One pair", 1],
  ["Nothing", 0]
]

# roll the dice
def roll_dice
  Array.new(5) { rand(1..6) }
end

# score the dice
def score(dice)
  counts = dice.tally.values.sort.reverse

  case counts
  when [5]       then "Five of a kind"
  when [4, 1]    then "Four of a kind"
  when [3, 2]    then "Full house"
  when [3, 1, 1] then "Three of a kind"
  when [2, 2, 1] then "Two pairs"
  when [2, 1, 1, 1] then "One pair"
  else
    dice.sort == [1, 2, 3, 4, 5] ||
      dice.sort == [2, 3, 4, 5, 6] ? "Straight" : "Nothing"
  end
end

loop do
  print "\nPress Enter to roll (q to quit): "
  break if gets&.strip&.downcase == "q"

  dice = roll_dice
  puts "Dice: #{dice.join(' ')}"
  puts "Hand: #{score(dice)}"
end

puts "Thanks for playing!"