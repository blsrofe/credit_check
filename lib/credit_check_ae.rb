puts "What is the card number?"
card_number = gets.chomp

card_number_split = card_number.split(//)

doubled_collection = []
card_number_split.each_with_index do |number, index|
  if index % 2 == 0
    doubled_collection.push(number.to_i * 2)
  else
    doubled_collection.push(number.to_i)
  end
end
