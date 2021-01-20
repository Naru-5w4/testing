nums = [0, 1, 2, 3, 4, 5, 6, 7, 8]

puts "-------"
puts "|#{nums[0]}|#{nums[1]}|#{nums[2]}|\n|#{nums[3]}|#{nums[4]}|#{nums[5]}|\n|#{nums[6]}|#{nums[7]}|#{nums[8]}|"
puts "-------"

finish_game = false

while finish_game == false

  print "(O) Where? : "
  player_num_1 = gets.to_i
  nums[player_num_1] = "O"
  puts "-------"
  puts "|#{nums[0]}|#{nums[1]}|#{nums[2]}|\n|#{nums[3]}|#{nums[4]}|#{nums[5]}|\n|#{nums[6]}|#{nums[7]}|#{nums[8]}|"
  puts "-------"
  if nums[0] == "O" && nums[1] == "O" && nums[2] == "O" ||
    nums[3] == "O" && nums[4] == "O" && nums[5] == "O" ||
    nums[6] == "O" && nums[7] == "O" && nums[8] == "O" ||
    nums[0] == "O" && nums[3] == "O" && nums[6] == "O" ||
    nums[1] == "O" && nums[4] == "O" && nums[7] == "O" ||
    nums[2] == "O" && nums[5] == "O" && nums[8] == "O" ||
    nums[0] == "O" && nums[4] == "O" && nums[8] == "O" ||
    nums[2] == "O" && nums[4] == "O" && nums[6] == "O"
    puts "O won!"
    finish_game = true
    exit!
  end

  print "(X) Where? : "
  player_num_2 = gets.to_i
  nums[player_num_2] = "X"
  puts "-------"
  puts "|#{nums[0]}|#{nums[1]}|#{nums[2]}|\n|#{nums[3]}|#{nums[4]}|#{nums[5]}|\n|#{nums[6]}|#{nums[7]}|#{nums[8]}|"
  puts "-------"
  if nums[0] == "X" && nums[1] == "X" && nums[2] == "X" ||
    nums[3] == "X" && nums[4] == "X" && nums[5] == "X" ||
    nums[6] == "X" && nums[7] == "X" && nums[8] == "X" ||
    nums[0] == "X" && nums[3] == "X" && nums[6] == "X" ||
    nums[1] == "X" && nums[4] == "X" && nums[7] == "X" ||
    nums[2] == "X" && nums[5] == "X" && nums[8] == "X" ||
    nums[0] == "X" && nums[4] == "X" && nums[8] == "X" ||
    nums[2] == "X" && nums[4] == "X" && nums[6] == "X"
    puts "X won!"
    finish_game = true
    exit!
  end
end