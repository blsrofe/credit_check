#create doubler method
def doubler (num)
  num_to.i * 2
end

#get credit card number
puts "What is the card number?"
card_number = gets.chomp
#put card number into array
split_card_number = card_number.split(//)
#put array into a hash with indexes
indexes = Hash[split_card_number.map.with_index.to_a]
#create bland second line array and fill with doubled numbers
second_line = []
indexes.each do |number, index|
  if index % 2 == 0
    #multiply by number by 2 and send to second_line array
    second_line.push(number.to_i * 2)
  else
    #send original number to seond_line array
    second_line.push(number.to_i)
  end
end
puts second_line
#make third line array
#add all third line values together
#if all third line values % 10 == 0 then puts "The number is valid!"
#if all third line values % 10 != 0 then puts "The number is not valid!"
